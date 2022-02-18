# SwiftUINavigationExample

SwiftUI Navigation example app.  Navigation is managed by a single class called NavSwitches.  This contains all the booleans that govern whether a NavigationLink is active.

The NavSwitches class is put into the @Environment.  This means it can be accessed from anywhere within the app, and any navigation boolean can be changed, so things like .popToRoot are achieved simply, by setting all booleans in a series to false.

Each NavigationLink is marked with .isDetailLink(false).  Without this (or marking it as a stackview), the results can appear buggy.

Ive created large complex apps with big navigation trees, using this technique, and Ive been able to navigate from any one spot to any other at any time.  This can make deep-linking very easy.

The only caveat I would add is that with animated transitions, you sometimes need to stagger the changing of booleans with time delays, to see all anims.
