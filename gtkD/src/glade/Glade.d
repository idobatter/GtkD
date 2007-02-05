/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GladeXML.html
 * outPack = glade
 * outFile = Glade
 * strct   = GladeXML
 * realStrct=
 * ctorStrct=
 * clss    = Glade
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- glade_xml_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- glade_xml_signal_autoconnect
 * 	- glade_xml_signal_connect_data
 * 	- glade_xml_signal_connect
 * 	- glade_xml_signal_connect_full
 * 	- glade_xml_signal_autoconnect_full
 * 	- GladeXMLConnectFunc
 * 	- GladeXMLCustomWidgetHandler
 * 	- glade_set_custom_handler
 * 	- glade_xml_new
 * 	- glade_xml_get_widget_prefix
 * imports:
 * 	- gtk.Widget
 * 	- gobject.ObjectG
 * 	- glib.ListG
 * 	- glib.Str
 * structWrap:
 * 	- GList* -> ListG
 * 	- GObject* -> ObjectG
 * 	- GladeXML* -> Glade
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 */

module glade.Glade;

private import gtkc.gladetypes;

private import gtkc.glade;

private import gtk.Widget;
private import gobject.ObjectG;
private import glib.ListG;
private import glib.Str;



/**
 * Description
 * This object represents an `instantiation' of an XML interface description.
 * When one of these objects is created, the XML file is read, and the
 * interface is created. The GladeXML object then provides an interface for
 * accessing the widgets in the interface by the names assigned to them
 * inside the XML description.
 * The GladeXML object can also be used to connect handlers to the named
 * signals in the description. Libglade also provides an interface by which
 * it can look up the signal handler names in the program's symbol table and
 * automatically connect as many handlers up as it can that way.
 */
private import gobject.ObjectG;
public class Glade : ObjectG
{
	
	/** the main Gtk struct */
	protected GladeXML* gladeXML;
	
	
	public GladeXML* getGladeStruct()
	{
		return gladeXML;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gladeXML;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GladeXML* gladeXML)
	{
		super(cast(GObject*)gladeXML);
		this.gladeXML = gladeXML;
	}
	
	
	
	/**
	 * Creates a new GladeXML object (and the corresponding widgets) from the
	 * XML file fname. Optionally it will only build the interface from the
	 * widget node root (if it is not NULL). This feature is useful if you
	 * only want to build say a toolbar or menu from the XML file, but not the
	 * window it is embedded in. Note also that the XML parse tree is cached
	 * to speed up creating another GladeXML object for the same file
	 * fname:
	 *  the XML file name.
	 * root:
	 *  the widget node in fname to start building from (or NULL)
	 * domain:
	 *  the translation domain for the XML file (or NULL for default)
	 * Returns:
	 *  the newly created GladeXML object, or NULL on failure.
	 */
	public this (char[] fname, char[] root = null, char[] domain=null)
	{
		// GladeXML* glade_xml_new (const char *fname,  const char *root,  const char *domain);
		this(cast(GladeXML*)glade_xml_new(Str.toStringz(fname),
		root ? Str.toStringz(root) : null,
		domain ? Str.toStringz(domain) : null) );
	}
	
	/**
	 * This function is used to get a list of pointers to the GtkWidget(s)
	 * with names that start with the string name in the interface description.
	 * You would use this if you have to do something to all of these widgets
	 * after loading.
	 * self:
	 *  the GladeXML object.
	 * name:
	 *  the name of the widget.
	 * Returns:
	 *  A list of the widget that match name as the start of their
	 * name, or NULL if none exists.
	 */
	public Widget[] getWidgetPrefix(char[] name)
	{
		// GList* glade_xml_get_widget_prefix (GladeXML *self,  const char *name);
		Widget[] ret;
		ListG widgets = new ListG( glade_xml_get_widget_prefix(gladeXML, Str.toStringz(name)) );
		for (int i=0;i < widgets.length; i++) {
			ret ~= new Widget(cast(GtkWidget*)widgets.nthData(i));
		}
		return widgets.length ? ret : null;
	}
	
	
	
	
	
	/**
	 * Description
	 * These routines are used to initialise libglade, and to load addon modules
	 * that recognise extra widget sets. The glade_init
	 * routine must be called before any libglade routines are used, and the
	 * glade_load_module routine would be used to load
	 * extra modules.
	 */
	
	
	
	
	/**
	 * Creates a new GladeXML object (and the corresponding widgets) from the
	 * buffer buffer. Optionally it will only build the interface from the
	 * widget node root (if it is not NULL). This feature is useful if you
	 * only want to build say a toolbar or menu from the XML document, but not the
	 * window it is embedded in.
	 * buffer:
	 *  the memory buffer containing the XML document.
	 * size:
	 *  the size of the buffer.
	 * root:
	 *  the widget node in buffer to start building from (or NULL)
	 * domain:
	 *  the translation domain to use for this interface (or NULL)
	 * Returns:
	 *  the newly created GladeXML object, or NULL on failure.
	 */
	public this (char[] buffer, int size, char[] root, char[] domain)
	{
		// GladeXML* glade_xml_new_from_buffer (const char *buffer,  int size,  const char *root,  const char *domain);
		this(cast(GladeXML*)glade_xml_new_from_buffer(Str.toStringz(buffer), size, Str.toStringz(root), Str.toStringz(domain)) );
	}
	
	/**
	 * This routine can be used by bindings (such as gtk--) to help construct
	 * a GladeXML object, if it is needed.
	 * self:
	 *  the GladeXML object
	 * fname:
	 *  the XML filename
	 * root:
	 *  the root widget node (or NULL for none)
	 * domain:
	 *  the translation domain (or NULL for the default)
	 * Returns:
	 *  TRUE if the construction succeeded.
	 */
	public int construct(char[] fname, char[] root, char[] domain)
	{
		// gboolean glade_xml_construct (GladeXML *self,  const char *fname,  const char *root,  const char *domain);
		return glade_xml_construct(gladeXML, Str.toStringz(fname), Str.toStringz(root), Str.toStringz(domain));
	}
	
	
	
	
	/**
	 * This function is used to get a pointer to the GtkWidget corresponding to
	 * name in the interface description. You would use this if you have to do
	 * anything to the widget after loading.
	 * self:
	 *  the GladeXML object.
	 * name:
	 *  the name of the widget.
	 * Returns:
	 *  the widget matching name, or NULL if none exists.
	 */
	public Widget getWidget(char[] name)
	{
		// GtkWidget* glade_xml_get_widget (GladeXML *self,  const char *name);
		return new Widget( glade_xml_get_widget(gladeXML, Str.toStringz(name)) );
	}
	
	
	/**
	 * Used to get the name of a widget that was generated by a GladeXML object.
	 * widget:
	 *  the widget
	 * Returns:
	 *  the name of the widget.
	 */
	public static char[] gladeGetWidgetName(Widget widget)
	{
		// const char* glade_get_widget_name (GtkWidget *widget);
		return Str.toString(glade_get_widget_name((widget is null) ? null : widget.getWidgetStruct()) );
	}
	
	/**
	 * This function is used to get the GladeXML object that built this widget.
	 * widget:
	 *  the widget
	 * Returns:
	 *  the GladeXML object that built this widget.
	 */
	public static Glade gladeGetWidgetTree(Widget widget)
	{
		// GladeXML* glade_get_widget_tree (GtkWidget *widget);
		return new Glade( glade_get_widget_tree((widget is null) ? null : widget.getWidgetStruct()) );
	}
	
	
	
	
	
	
	/**
	 * It used to be necessary to call glade_init() before creating
	 * GladeXML objects. This is now no longer the case, as libglade will
	 * be initialised on demand now. Calling glade_init() manually will
	 * not cause any problems though.
	 */
	public static void init()
	{
		// void glade_init (void);
		glade_init();
	}
	
	/**
	 * Ensure that a required library is available. If it is not already
	 * available, libglade will attempt to dynamically load a module that
	 * contains the handlers for that library.
	 * library:
	 *  the required library
	 */
	public static void require(char[] library)
	{
		// void glade_require (const gchar *library);
		glade_require(Str.toStringz(library));
	}
	
	/**
	 * This function should be called by a module to assert that it
	 * provides wrappers for a particular library. This should be called
	 * by the register_widgets() function of a libglade module so that it
	 * isn't loaded twice, for instance.
	 * library:
	 *  the provided library
	 */
	public static void provide(char[] library)
	{
		// void glade_provide (const gchar *library);
		glade_provide(Str.toStringz(library));
	}
}