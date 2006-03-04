/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = Statusbar
 * strct   = GtkStatusbar
 * clss    = Statusbar
 * prefixes:
 * 	- gtk_statusbar_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * local aliases:
 */

module gtk.Statusbar;

private import gtk.typedefs;

private import lib.gtk;


/**
 * Description
 * A GtkStatusbar is usually placed along the bottom of an application's main
 * GtkWindow. It may provide a regular commentary of the application's status
 * (as is usually the case in a web browser, for example), or may be used to
 * simply output a message when the status changes, (when an upload is complete
 * in an FTP client, for example).
 * It may also have a resize grip (a triangular area in the lower right corner)
 * which can be clicked on to resize the window containing the statusbar.
 * Status bars in Gtk+ maintain a stack of messages. The message at
 * the top of the each bar's stack is the one that will currently be displayed.
 * Any messages added to a statusbar's stack must specify a context_id
 * that is used to uniquely identify the source of a message. This context_id can be
 * generated by gtk_statusbar_get_context_id(), given a message and the
 * statusbar that it will be added to. Note that messages are stored in a
 * stack, and when choosing which message to display, the stack structure is
 * adhered to, regardless of the context identifier of a message.
 * Status bars are created using gtk_statusbar_new().
 * Messages are added to the bar's stack with gtk_statusbar_push().
 * The message at the top of the stack can be removed using gtk_statusbar_pop(). A message can be removed from anywhere in the stack if its message_id was recorded at the time it was added. This is done using gtk_statusbar_remove().
 */
private import gtk.HBox;
public class Statusbar : HBox
{
	
	/** the main Gtk struct */
	protected GtkStatusbar* gtkStatusbar;
	
	
	public GtkStatusbar* getStatusbarStruct()
	{
		return gtkStatusbar;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkStatusbar;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkStatusbar* gtkStatusbar)
	{
		super(cast(GtkHBox*)gtkStatusbar);
		this.gtkStatusbar = gtkStatusbar;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(guint, char[], Statusbar)[] onTextPoppedListeners;
	void addOnTextPopped(void delegate(guint, char[], Statusbar) dlg)
	{
		if ( !("text-popped" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"text-popped",
			cast(GCallback)&callBackTextPopped,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["text-popped"] = 1;
		}
		onTextPoppedListeners ~= dlg;
	}
	extern(C) static void callBackTextPopped(GtkStatusbar* statusbarStruct, guint contextId, gchar* text, Statusbar statusbar)
	{
		bit consumed = false;
		
		foreach ( void delegate(guint, char[], Statusbar) dlg ; statusbar.onTextPoppedListeners )
		{
			dlg(contextId, std.string.toString(text), statusbar);
		}
		
		return consumed;
	}
	
	void delegate(guint, char[], Statusbar)[] onTextPushedListeners;
	void addOnTextPushed(void delegate(guint, char[], Statusbar) dlg)
	{
		if ( !("text-pushed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"text-pushed",
			cast(GCallback)&callBackTextPushed,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["text-pushed"] = 1;
		}
		onTextPushedListeners ~= dlg;
	}
	extern(C) static void callBackTextPushed(GtkStatusbar* statusbarStruct, guint contextId, gchar* text, Statusbar statusbar)
	{
		bit consumed = false;
		
		foreach ( void delegate(guint, char[], Statusbar) dlg ; statusbar.onTextPushedListeners )
		{
			dlg(contextId, std.string.toString(text), statusbar);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkStatusbar ready for messages.
	 * Returns:
	 * the new GtkStatusbar.
	 */
	public this ()
	{
		// GtkWidget* gtk_statusbar_new (void);
		this(cast(GtkStatusbar*)gtk_statusbar_new() );
	}
	
	/**
	 * Returns a new context identifier, given a description of the actual context.
	 * statusbar:
	 * a GtkStatusbar.
	 * context_description:
	 * textual description of what context the new message is
	 * being used in.
	 * Returns:
	 * an integer id.
	 */
	public uint getContextId(char[] contextDescription)
	{
		// guint gtk_statusbar_get_context_id (GtkStatusbar *statusbar,  const gchar *context_description);
		return gtk_statusbar_get_context_id(gtkStatusbar, std.string.toStringz(contextDescription));
	}
	
	/**
	 * Pushes a new message onto a statusbar's stack.
	 * statusbar:
	 * a GtkStatusbar.
	 * context_id:
	 * the message's context id, as returned by
	 * gtk_statusbar_get_context_id().
	 * text:
	 * the message to add to the statusbar.
	 * Returns:
	 * the message's new message id for use with gtk_statusbar_remove().
	 */
	public uint push(uint contextId, char[] text)
	{
		// guint gtk_statusbar_push (GtkStatusbar *statusbar,  guint context_id,  const gchar *text);
		return gtk_statusbar_push(gtkStatusbar, contextId, std.string.toStringz(text));
	}
	
	/**
	 * Removes the message at the top of a GtkStatusBar's stack.
	 * statusbar:
	 * a GtkStatusBar.
	 * context_id:
	 * a context identifier.
	 */
	public void pop(uint contextId)
	{
		// void gtk_statusbar_pop (GtkStatusbar *statusbar,  guint context_id);
		gtk_statusbar_pop(gtkStatusbar, contextId);
	}
	
	/**
	 * Forces the removal of a message from a statusbar's stack. The exact context_id and message_id must be specified.
	 * statusbar:
	 * a GtkStatusBar.
	 * context_id:
	 * a context identifier.
	 * message_id:
	 * a message identifier, as returned by gtk_statusbar_push().
	 */
	public void remove(uint contextId, uint messageId)
	{
		// void gtk_statusbar_remove (GtkStatusbar *statusbar,  guint context_id,  guint message_id);
		gtk_statusbar_remove(gtkStatusbar, contextId, messageId);
	}
	
	/**
	 * Sets whether the statusbar has a resize grip. TRUE by default.
	 * statusbar:
	 * a GtkStatusBar.
	 * setting:
	 * TRUE to have a resize grip.
	 */
	public void setHasResizeGrip(int setting)
	{
		// void gtk_statusbar_set_has_resize_grip  (GtkStatusbar *statusbar,  gboolean setting);
		gtk_statusbar_set_has_resize_grip(gtkStatusbar, setting);
	}
	
	/**
	 * Returns whether the statusbar has a resize grip.
	 * statusbar:
	 * a GtkStatusBar.
	 * Returns:
	 * TRUE if the statusbar has a resize grip.
	 * Property Details
	 * The "has-resize-grip" property
	 *  "has-resize-grip" gboolean : Read / Write
	 * Whether the statusbar has a grip for resizing the toplevel window.
	 * Default value: TRUE
	 * Since 2.4
	 * Style Property Details
	 * The "shadow-type" style property
	 *  "shadow-type" GtkShadowType : Read
	 * Style of bevel around the statusbar text.
	 * Default value: GTK_SHADOW_IN
	 * Signal Details
	 * The "text-popped" signal
	 * void user_function (GtkStatusbar *statusbar,
	 *  guint context_id,
	 *  gchar *text,
	 *  gpointer user_data) : Run last
	 * Is emitted whenever a new message is popped off a statusbar's stack.
	 * statusbar:
	 * the object which received the signal.
	 * context_id:
	 * the context id of the relevant message/statusbar.
	 * text:
	 * the message that was just popped.
	 * user_data:
	 * user data set when the signal handler was connected.
	 */
	public int getHasResizeGrip()
	{
		// gboolean gtk_statusbar_get_has_resize_grip  (GtkStatusbar *statusbar);
		return gtk_statusbar_get_has_resize_grip(gtkStatusbar);
	}
	
}