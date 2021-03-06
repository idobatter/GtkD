/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkSearchEntry.html
 * outPack = gtk
 * outFile = SearchEntry
 * strct   = GtkSearchEntry
 * realStrct=
 * ctorStrct=
 * clss    = SearchEntry
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_search_entry_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.SearchEntry;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;


private import gtk.Entry;

/**
 * GtkSearchEntry is a subclass of GtkEntry that has
 * been tailored for use as a search entry.
 *
 * It will show an inactive symbolic "find" icon when the
 * search entry is empty, and a symbolic "clear" icon when
 * there is text. Clicking on the "clear" icon will empty
 * the search entry.
 *
 * Note that the search/clear icon is shown using a secondary
 * icon, and thus does not work if you are using the secondary
 * icon position for some other purpose.
 *
 * To make filtering appear more reactive, it is a good idea to
 * not react to every change in the entry text immediately, but
 * only after a short delay. To support this, GtkSearchEntry
 * emits the "search-changed" signal which can
 * be used instead of the "changed" signal.
 */
public class SearchEntry : Entry
{
	
	/** the main Gtk struct */
	protected GtkSearchEntry* gtkSearchEntry;
	
	
	/** Get the main Gtk struct */
	public GtkSearchEntry* getSearchEntryStruct()
	{
		return gtkSearchEntry;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSearchEntry;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSearchEntry* gtkSearchEntry)
	{
		super(cast(GtkEntry*)gtkSearchEntry);
		this.gtkSearchEntry = gtkSearchEntry;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSearchEntry = cast(GtkSearchEntry*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(SearchEntry)[] onSearchChangedListeners;
	/**
	 * The "search-changed" signal is emitted with a short
	 * delay of 150 milliseconds after the last change to the entry text.
	 * Since 3.10
	 */
	void addOnSearchChanged(void delegate(SearchEntry) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("search-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"search-changed",
			cast(GCallback)&callBackSearchChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["search-changed"] = 1;
		}
		onSearchChangedListeners ~= dlg;
	}
	extern(C) static void callBackSearchChanged(GtkSearchEntry* entryStruct, SearchEntry _searchEntry)
	{
		foreach ( void delegate(SearchEntry) dlg ; _searchEntry.onSearchChangedListeners )
		{
			dlg(_searchEntry);
		}
	}
	
	
	/**
	 * Creates a GtkSearchEntry, with a find icon when the search field is
	 * empty, and a clear icon when it isn't.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_search_entry_new (void);
		auto p = gtk_search_entry_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_search_entry_new()");
		}
		this(cast(GtkSearchEntry*) p);
	}
}
