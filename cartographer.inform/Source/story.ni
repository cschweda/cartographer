"The Cartographer's Commission" by An Apprentice Cartographer

[Include necessary extensions]
Include Basic Screen Effects by Emily Short.

[Game Description]
The story headline is "An Infocom-Style Adventure into Impossible Geography".
The story description is "You are a young cartographer sent to map a newly discovered valley. But as you explore deeper, you discover that cartography is not merely the documentation of reality but can be a means of shaping it.".

[==========================================================================]
[                           CUSTOM KINDS SECTION                           ]
[==========================================================================]

[Reality stability system implementation]
A room has a number called reality-stability. The reality-stability of a room is usually 10.

[Reality distortion description text]
To say reality-distortion:
	if the reality-stability of the location is less than 3:
		say "Reality itself seems fluid here, with surfaces and distances constantly shifting.";
	else if the reality-stability of the location is less than 7:
		say "There's a subtle wrongness to the geometry of this place that your mind struggles to process.";
	else:
		say "Everything seems relatively normal, though something about the space feels slightly off."

[Player perception/skill level tracking]
The player-perception is a number that varies. The player-perception is 1.

[Custom Map Object]
A map is a kind of thing.
A map has a text called region-depicted.
A map has a number called accuracy-rating.

[Custom Map description routine]
Carry out examining a map:
	say "A [if the accuracy-rating of the noun is less than 3]rough[otherwise if the accuracy-rating of the noun is less than 7]detailed[otherwise]masterful[end if] map depicting [the region-depicted of the noun]. [run paragraph on]";
	if the accuracy-rating of the noun is greater than 8:
		say "Something about the precision of this map makes the depicted location seem more real somehow.";
	else:
		say "The map provides a [if the accuracy-rating of the noun is less than 3]basic[otherwise if the accuracy-rating of the noun is less than 7]good[otherwise]excellent[end if] understanding of the geography.";
	continue the action.

[==========================================================================]
[                         PLAYER SETUP SECTION                             ]
[==========================================================================]

[Player's Starting Location]
The player is in the Trailhead.

[Player's Inventory - Cartographer's Kit]
The leather satchel is a container. The leather satchel is wearable. The player wears the leather satchel.
The description of the leather satchel is "A sturdy leather cartographer's satchel, containing the essential tools of your trade."

The blank paper is in the leather satchel. The description is "A sheet of high-quality paper suitable for maps or rubbings." Understand "paper" as blank paper.

The charcoal stick is in the leather satchel. The description is "A stick of charcoal, perfect for quick sketches or rubbings." Understand "charcoal" as charcoal stick.

The brass compass is in the leather satchel. The description is "A finely crafted brass compass with a precisely marked face. [if the reality-stability of the location < 7]The needle spins erratically in this location, as if confused by the geography.[else]The needle points reliably north.[end if]". Understand "compass" as brass compass.

The small mirror is in the leather satchel. The description is "A pocket mirror with a polished silver surface. Useful for reflecting light or observing things from different angles." Understand "mirror" as small mirror.

The player-map is a map in the leather satchel. The description is "Your working map of the valley, continuously updated as you explore. [if the reality-stability of the location < 5]The landmarks seem to shift slightly on the page as you look at them.[else]It appears to be accurate based on your observations so far.[end if]". The region-depicted of the player-map is "the mysterious valley". The accuracy-rating of the player-map is 3. Understand "map" as player-map.

The brass lantern is in the leather satchel. The description is "A sturdy brass lantern that provides reliable illumination. It's currently [if the brass lantern is lit]lit[otherwise]unlit[end if]."
The brass lantern can be lit or unlit. The brass lantern is unlit. Understand "lantern" as brass lantern.

[Commission Letter - Initial story setup]
The commission letter is in the leather satchel. The description is "A formal letter from the Royal Geographical Society, commissioning you to create a detailed map of a recently discovered valley and its ruins. The letter is signed by a 'Commissioner Barquentine' and bears an ornate wax seal. It promises a substantial reward for a thorough cartographic record of the area."

[==========================================================================]
[                           ACT 1 LOCATIONS                                ]
[==========================================================================]

[Valley Locations Implementation]

The Trailhead is a room. "The mountain trail ends abruptly here at the edge of a verdant valley that sprawls before you, bordered by sheer cliff faces on three sides. Morning mist still clings to the distant trees, while your boots sink slightly into the damp earth. Your patron's directions led you unerringly to this point, where civilization gives way to the uncharted wilderness you've been commissioned to document. Your mapping equipment weighs heavily in your pack, a constant reminder of the task ahead.

The only obvious path leads north into the valley proper."

The reality-stability of the Trailhead is 10.

The worn signpost is scenery in the Trailhead. The description is "A weathered wooden signpost, barely legible after years of exposure. You can make out the words 'VALLEY OF ECHOES' and what might be a warning, though the text is too faded to read clearly."

The Meadow Clearing is a room. The Meadow Clearing is north of the Trailhead. "Tall grasses sway gently around you in this wide, open clearing. Clusters of wildflowers in impossible hues dot the landscape, their fragrance hanging sweet in the air. The occasional buzz of insects provides a gentle soundtrack to the scene. This would make an excellent reference point on your map, with the distinctive lone oak standing sentinel at the clearing's center, its massive trunk bearing curious markings that appear to be very old indeed.

Paths lead in all four cardinal directions, though the eastern route appears less traveled. The westward path seems particularly overgrown, suggesting it may be impassable."

The reality-stability of the Meadow Clearing is 9.

The oak tree is scenery in the Meadow Clearing. "The massive oak dominates the clearing, its sprawling branches casting dappled shadows across the ground. Its trunk bears unusual markings that seem deliberately carved rather than naturally formed."

The oak markings are part of the oak tree. The description is "The markings appear to be some form of stylized writing or symbology, arranged in circular patterns that wrap around the trunk. They're weathered with age but still clearly discernible." Understand "markings" or "symbols" or "carvings" as oak markings.

The oak cipher is a thing. The description is "A rubbing taken from the markings on the oak tree. Looking at it carefully, you can discern what appears to be instructions for aligning some kind of circular device, with specific references to astronomical features and what might be local landmarks."

The small stone cairn is a container in the Meadow Clearing. The small stone cairn is openable and closed. "A small pile of carefully stacked stones forms a cairn near the base of the oak tree. It seems deliberately placed rather than a natural formation." The description is "A carefully constructed pile of flat stones, stacked in a way that creates a small hollow space inside. [if the small stone cairn is open]The cairn has been opened, revealing its contents.[else]You might be able to open it without disturbing the overall structure.[end if]"

The old brass coin is in the small stone cairn. The description is "A tarnished brass coin of unusual design. One side depicts a compass rose with an elaborate 'G' at its center, while the reverse shows what appears to be a stylized map with the text 'TRUTH IN MEASURE' inscribed around the edge." Understand "coin" or "brass coin" as old brass coin.

The Babbling Brook is east of the Meadow Clearing. "A crystalline stream cuts through the land here, chattering over smooth stones as it winds from the northeast to southwest. The water is clear enough to count the multicolored pebbles lining its bed. A suspicious-looking white house seems to be reflected in the water, though when you look up, no such building is visible anywhere in the vicinity. Several large, flat rocks provide convenient crossing points, though they glisten with spray, suggesting caution. Your cartographer's eye notes how the brook divides the landscape into distinct regions, a natural boundary that must be accurately rendered.

The brook can be crossed to the east via stepping stones, while paths lead north toward foothills and west back to the clearing."

The reality-stability of the Babbling Brook is 9.

The stepping stones are scenery in the Babbling Brook. "A series of flat stones provide a way across the brook. They seem deliberately placed, forming a pattern that nags at your cartographer's instinct for order." Understand "stones" or "stone" or "rocks" as stepping stones.

The clear water is scenery in the Babbling Brook. "The water is remarkably clear, allowing you to see all the way to the pebbly bottom. As you watch the flow, you occasionally catch glimpses of impossible reflections - structures or landscapes that don't match your surroundings." Understand "brook" or "stream" or "water" as clear water.

The small metal box is a container in the Babbling Brook. The small metal box is openable and closed. It is fixed in place. "Partially submerged near the bank of the brook is what appears to be a small metal box, its surface glistening with water." The description is "A small box made of what appears to be brass or copper, with intricate engravings along its edges. It's been in the water long enough to develop a greenish patina, but the clasp still seems functional."

[Stepping stones puzzle]
The stepping-stones-puzzle-state is a number that varies. The stepping-stones-puzzle-state is 0.

Instead of going east from the Babbling Brook:
	if the stepping-stones-puzzle-state is 3:
		continue the action;
	else:
		say "You'll need to use the stepping stones to cross. They look slippery, so you should choose your path carefully."

The Ancient Monoliths is north of the Meadow Clearing. "Three weathered stone pillars, each roughly twice your height, stand in perfect triangular formation. Their surfaces are covered with worn carvings in a script you don't recognize, though certain symbols bear a faint resemblance to astronomical notations you studied during your apprenticeship. Moss creeps up the northern faces of each monolith, and the ground surrounding them is unusually bare, as if nothing has grown here in centuries. The arrangement brings to mind the ancient towers of Gormenghast as described in forbidden tomes – structures that exist as much in ritual as in stone.

Paths lead west back to the meadow and southeast toward what appears to be a structure of some kind."

The reality-stability of the Ancient Monoliths is 8.

The stone monoliths are scenery in the Ancient Monoliths. "Three tall stone pillars arranged in a triangle. Each is covered with strange carvings that seem to depict star patterns and astronomical phenomena. The stones appear to be mounted on bases that might allow them to be rotated." Understand "monoliths" or "pillars" or "stones" as stone monoliths.

The monolith pedestal is scenery in the Ancient Monoliths. "A stone pedestal stands at the center of the triangle formed by the monoliths. Its top surface contains a circular depression, as if designed to hold something." Understand "pedestal" as monolith pedestal.

The brass plate is scenery in the Ancient Monoliths. "A tarnished brass plate affixed to the central pedestal. The inscription is in an unfamiliar script, though you can make out what appear to be directional indicators and astronomical symbols." Understand "plate" or "inscription" as brass plate.

[Monolith alignment puzzle]
The monolith-puzzle-state is a number that varies. The monolith-puzzle-state is 0.

The Ruined Gatehouse is southeast of the Ancient Monoliths. The Ruined Gatehouse is east of the Babbling Brook. "What must once have been an impressive entranceway now stands in picturesque decay. Twin columns frame a stone archway, though the gate itself has long since rotted away. A weathered sign, barely legible, reads: 'Trespassers will be recycled.' The sentiment strikes you as oddly familiar. Vines embrace the remaining stonework, nature slowly reclaiming the abandoned craftsmanship. Beyond the arch, you can make out the foundations of what appears to be a larger complex. This is undoubtedly the ruins mentioned in your commission, though they seem more extensive than your briefing suggested.

The gatehouse opens to the east into the ruins, while paths lead northwest back toward the monoliths and west to the brook."

The reality-stability of the Ruined Gatehouse is 8.

The weathered sign is scenery in the Ruined Gatehouse. "A decaying wooden sign hanging from one rusted hinge. Most of the text has faded, but you can still make out the words 'Trespassers will be recycled' in what was once bright red paint." Understand "sign" as weathered sign.

The carved lintel stone is scenery in the Ruined Gatehouse. "The massive stone that forms the top of the archway is carved with an intricate design depicting what appears to be a map unfurling into reality. The craftsmanship is remarkable, even in its weathered state." Understand "lintel" or "stone" or "carving" as carved lintel stone.

The small stone gargoyle is scenery in the Ruined Gatehouse. "A small stone gargoyle perches atop one of the gatehouse columns. Though weathered, its features remain distinct - a grotesque creature with an unnervingly intelligent expression. Its eyes seem to follow you as you move about, though that must surely be a trick of the light." Understand "gargoyle" as small stone gargoyle.

The Crumbling Courtyard is east of the Ruined Gatehouse. "Fractured flagstones form an uneven floor in what was clearly once a grand courtyard. Toppled columns and weathered statues lie scattered about like discarded toys of some giant child. Among the rubble, you spot what appears to be an elvish sword of great antiquity. Upon closer inspection, it's just a rusty gardening tool. In the center stands a dry fountain, its basin cracked and filled with windblown leaves rather than water. The surrounding walls have mostly collapsed, though sections still reach toward the sky in defiant fingers of masonry. Curiously, a brass sundial remains intact atop a pedestal, its gnomon casting a precise shadow despite the passage of countless years.

Doorways and openings in the ruins lead north, east, and south, while the gatehouse lies to the west."

The reality-stability of the Crumbling Courtyard is 7.

The brass sundial is scenery in the Crumbling Courtyard. "An ornate brass sundial mounted on a stone pedestal at the center of the courtyard. Despite the general decay around it, the sundial appears to be in perfect working condition, its gnomon casting a precise shadow across the numbered face. The sundial features unusual markings alongside the normal hour indicators - symbols that correspond to those you saw on the monoliths." Understand "sundial" or "dial" as brass sundial.

The rusty gardening tool is in the Crumbling Courtyard. "A rusted metal implement lies half-buried in debris near the fountain." The description is "What at first glance might have been mistaken for an ancient sword is actually a mundane gardening tool, perhaps a trowel or small spade. Time has not been kind to it, leaving it rusted and fragile." Understand "tool" or "gardening tool" or "trowel" or "spade" as rusty gardening tool.

The dry fountain is scenery in the Crumbling Courtyard. "A once-grand fountain now stands dry and cracked in the center of the courtyard. The basin is filled with dead leaves and debris, while the central sculpture - what might have been a figure holding aloft a globe - is too damaged to clearly identify." Understand "fountain" or "basin" as dry fountain.

The fallen column is scenery in the Crumbling Courtyard. "A massive stone column lies broken across the courtyard, its fluted surface worn smooth in places by the elements. It's large enough that you could climb atop it for a better view of the surroundings." Understand "column" as fallen column.

[Sundial puzzle]
The sundial-puzzle-state is a number that varies. The sundial-puzzle-state is 0.

The time-of-day is a number that varies. The time-of-day is 9. [9 AM game start]

Every turn:
	if a random chance of 1 in 20 succeeds:
		increment the time-of-day;
		if the time-of-day is greater than 17:
			now the time-of-day is 9;
		say "You notice the sun's position has changed slightly."

The Temple Antechamber is north of the Crumbling Courtyard. "Smooth stone walls rise to form a perfectly proportioned chamber that seems remarkably well-preserved compared to the outer ruins. Alcoves along the walls once held statues, though only their feet remain on the pedestals. A faint humming seems to emanate from somewhere deeper within the structure, at the threshold of hearing. Most striking is the floor mosaic depicting what appears to be a map of stars and continents in an arrangement unfamiliar to your trained eye. The ceiling arches overhead in a series of impossibly thin stone ribs, reminiscent of the ancient rituals halls of Gormenghast where the Earl would conduct the Procedure of the Gilt Branches.

A grand archway to the north leads deeper into the temple, while a simple doorway returns south to the courtyard."

The reality-stability of the Temple Antechamber is 7.

The floor mosaic is scenery in the Temple Antechamber. "An intricate mosaic covers the entire floor, depicting what appears to be a map of unfamiliar continents surrounded by star patterns. The central portion of the mosaic is missing, leaving a circular empty space that corresponds precisely to the size of the small mirror in your possession." Understand "mosaic" or "map" or "floor" as floor mosaic.

The stone pedestals are scenery in the Temple Antechamber. "Stone pedestals line the walls, each bearing only the feet of what were once full statues. The clean breaks suggest deliberate removal rather than decay or vandalism." Understand "pedestals" or "pedestal" as stone pedestals.

The tarnished copper plate is scenery in the Temple Antechamber. "A large copper plate mounted on the north wall beside the archway. Though tarnished with age, you can make out an inscription in an archaic script that appears to be a warning or instructions of some kind." Understand "copper plate" or "plate" as tarnished copper plate.

[Floor mosaic puzzle]
The mosaic-puzzle-state is a number that varies. The mosaic-puzzle-state is 0.

The Inner Sanctum is north of the Temple Antechamber. "The circular chamber before you bears every hallmark of a sacred space, from the vaulted ceiling to the precisely arranged pillars that support it. Unlike the antechamber, this room shows signs of more recent disturbance - scratch marks on the floor, a fallen sconce, and what might be footprints in the fine dust. Dominating the center is a stone altar bearing a large bronze disc covered in intricate engravings. Behind it, the far wall contains what appears to be a door, though no obvious mechanism for opening it is visible. On the western wall, someone has carved a crude mailbox symbol, though its meaning here eludes you.

The only obvious exit is south back to the antechamber."

The reality-stability of the Inner Sanctum is 6.

The bronze disc is scenery in the Inner Sanctum. "A large bronze disc mounted on the stone altar. It consists of three concentric rings that appear to be movable, each engraved with different symbols - geographic features on the outer ring, astronomical bodies on the middle ring, and abstract patterns on the inner ring. At the very center is a small button or knob." Understand "disc" or "disk" or "bronze" or "mechanism" as bronze disc.

The stone altar is scenery in the Inner Sanctum. "A rectangular stone altar standing at the center of the chamber. Its surface is polished smooth from countless years of use, with the bronze disc mechanism mounted securely at its center." Understand "altar" as stone altar.

The fallen sconce is in the Inner Sanctum. "A metal sconce that has fallen from the wall lies on the floor near the altar." The description is "A bronze wall sconce designed to hold a torch or lamp. It appears to have been recently dislodged from the wall, suggesting someone was here not long ago." Understand "sconce" as fallen sconce.

The strange footprints are scenery in the Inner Sanctum. "Faint footprints in the dust of the floor lead from the south entrance to the altar, and then to the north wall where the hidden door is located. The prints appear to have been made by multiple individuals, and relatively recently." Understand "footprints" or "prints" or "tracks" as strange footprints.

The carved mailbox symbol is scenery in the Inner Sanctum. "Someone has crudely carved the shape of a mailbox into the western wall of the sanctum. The carving looks much more recent than the surrounding architecture, and seems oddly out of place. Beneath it, almost too faint to see, are scratched the words 'white house'." Understand "mailbox" or "symbol" or "carving" as carved mailbox symbol.

[Hidden door to the underground complex - initially locked until bronze disc puzzle is solved]
The hidden door is a door. The hidden door is north of the Inner Sanctum and south of the Descent. The hidden door is scenery. The hidden door is closed and locked. "The north wall appears solid at first glance, but closer inspection reveals the faint outline of what might be a doorway. There's no visible handle or mechanism for opening it." Understand "door" or "north wall" or "doorway" as hidden door.

[Bronze disc puzzle]
The bronze-disc-puzzle-state is a number that varies. The bronze-disc-puzzle-state is 0.

The outer ring is part of the bronze disc. The middle ring is part of the bronze disc. The inner ring is part of the bronze disc. The center button is part of the bronze disc.

[==========================================================================]
[                           ACT 2 LOCATIONS                                ]
[==========================================================================]

[Underground Complex Locations]

The Descent is a room. "The spiral staircase winds down into darkness, each step worn smooth by countless feet despite the ruins above supposedly being 'recently discovered.' Your lantern casts jumping shadows against the curved walls, which transition from fitted stonework to what appears to be natural cavern the deeper you go. The air grows noticeably cooler and bears a faint mineral scent. Your pack feels somehow lighter down here, as if the very laws of nature have begun to shift. Periodically, the stairwell passes small landings with iron-bound doors, each emblazoned with names like 'Frobozzco Survey Division' and 'Department of Underground Measurements.'

The stairs continue to wind downward, though you could return up to the Inner Sanctum if you wished."

The reality-stability of the Descent is 5.

The iron-bound doors are scenery in the Descent. "Heavy wooden doors reinforced with iron bands line the stairwell at irregular intervals. Each bears a plaque or nameplate indicating some function: 'Reality Calibration Unit,' 'Topographical Anomalies Department,' 'Interdimensional Cartography.' Despite your efforts, none of the doors will budge." Understand "doors" or "door" as iron-bound doors.

The strange markings are scenery in the Descent. "Peculiar symbols and notations have been carved into the wall of the stairwell at various points. They resemble surveyor's marks, but with additional symbols you don't recognize from your training." Understand "markings" or "carvings" or "symbols" as strange markings.

The floating dust motes are scenery in the Descent. "Dust particles float in the beam of your lantern, but their movement seems... wrong. Rather than drifting randomly, they appear to follow precise geometric patterns, occasionally forming recognizable shapes before dispersing again." Understand "dust" or "motes" or "particles" as floating dust motes.

The Cartographers' Hall is down from the Descent. "You stand in a vast chamber that defies your sense of place and scale. The ceiling arches so high above that your lantern barely illuminates it. It is pitch black. You are likely to be mapped by a grue. The walls are covered with maps - hundreds of them - drawn on parchment, vellum, stone tablets, and materials you cannot identify. They depict lands and seas you recognize alongside others that cannot possibly exist. At the center of the room stands a large circular table bearing a three-dimensional model of what appears to be this very valley, rendered with impossible precision down to the tiniest tree. Strangely, the model continues below the valley floor, showing chambers and passages - including this very room.

Archways lead east and west, while the stairway ascends to the north."

The reality-stability of the Cartographers' Hall is 6.

The three-dimensional model is scenery in the Cartographers' Hall. "An extraordinarily detailed model of the valley above, including the ruins and surrounding terrain. The level of precision is unsettling - you can identify the exact clearing where you entered, the monoliths, even the small cairn near the oak tree. More disturbing is how the model continues beneath the valley's surface, depicting an extensive complex of underground chambers - including the very hall you're standing in, complete with a tiny representation of yourself examining the model." Understand "model" or "3d model" or "valley model" as three-dimensional model.

The various maps are scenery in the Cartographers' Hall. "The walls are covered with maps of every description - ancient yellowed parchments, modern technical drawings, and stranger formats that seem to shift and change as you look at them. They depict a bewildering array of locations, some familiar to you and others that could not possibly exist in any world you know." Understand "maps" or "wall maps" as various maps.

The magnifying lens is in the Cartographers' Hall. "A brass-framed magnifying lens hangs from a chain near the central model." The description is "A high-quality magnifying lens in an ornate brass frame, attached to a long chain anchored to the edge of the central table. It allows for detailed examination of the three-dimensional model." Understand "lens" or "magnifying" or "magnifier" as magnifying lens.

The ancient sextant is in the Cartographers' Hall. "An antique sextant rests on a small pedestal near the model table." The description is "A beautifully crafted navigational sextant that appears extremely old, yet in perfect condition. The brass housing is engraved with symbols matching those you saw on the monoliths above. When you hold it up, the instrument seems to measure angles that should be impossible." Understand "sextant" as ancient sextant.

The Library of Distances is east of the Cartographers' Hall. "Bookshelves stretch in neat rows throughout this long, rectangular room, though 'books' seems an inadequate description for the collection they hold. Scrolls, tablets, bound volumes, and stranger forms line the shelves, each apparently containing geographical information from across time and... elsewhere. A reading desk positioned near the center bears a tome open to a page describing the very valley you've been commissioned to map, including details you have yet to discover. One book on a nearby shelf is titled 'The Great Underground Empire: A Cartographical Survey' with 'Property of Lord Sepulchrave's Library' stamped on its spine in fading ink. The text appears to be written in multiple languages simultaneously, somehow readable regardless of which script you focus upon.

The only exit appears to be west back to the Cartographers' Hall, though the far end of the room seems to shimmer slightly."

The reality-stability of the Library of Distances is 5.

The impossible tome is scenery in the Library of Distances. "An enormous book lies open on the reading desk, its pages filled with text and illustrations that shift subtly as you watch. The current pages show a detailed description of the valley above, including several features you haven't yet discovered. Most unsettling is a paragraph that appears to describe your own actions in real time, including your current examination of this very book." Understand "tome" or "book" as impossible tome.

The various books are scenery in the Library of Distances. "The shelves contain an astonishing variety of written materials - conventional books and scrolls alongside crystal tablets, metal plates inscribed with tiny text, and objects that can only be described as three-dimensional writing. The organization system eludes you, though titles seem to reference locations, dimensions, and various forms of measurement." Understand "books" or "collection" or "scrolls" or "tablets" as various books.

The library desk is a supporter in the Library of Distances. "A massive oak desk positioned near the center of the library. Its surface is polished smooth from countless years of use, and it currently holds the open impossible tome." Understand "desk" or "reading desk" as library desk.

The brass lamp is on the library desk. "A small brass lamp provides warm light over the reading desk." The description is "A delicate brass lamp with an adjustable shade. Despite having no visible fuel source or electrical components, it produces a steady, warm light that illuminates the reading desk perfectly." Understand "lamp" as brass lamp.

The library ladder is scenery in the Library of Distances. "A tall rolling ladder attached to rails that run along the upper edge of the bookshelves. It allows access to the higher shelves, which seem to contain increasingly esoteric materials the further up you look." Understand "ladder" as library ladder.

[Shimmer passage - initially invisible until the tome is read]
The shimmer passage is a door. The shimmer passage is east of the Library of Distances and west of the Chamber of Scales. The shimmer passage is scenery. The shimmer passage is closed. "There's something odd about the eastern wall of the library - a subtle distortion in the air, like heat rising from hot stone, but with an uncanny quality that suggests... something more." Understand "shimmer" or "passage" or "distortion" as shimmer passage.

The shimmer-visible is a truth state that varies. The shimmer-visible is false.

The Projection Room is a room. "Light dances across every surface of this otherwise empty chamber, cast from an unseen source. The illumination forms images that shift and change as you move - coastlines, mountain ranges, city layouts, all rendered in perfect detail and constantly in flux. Most unsettling is how the projections seem to respond to your thoughts; when you consider a particular landscape feature you encountered earlier today, it appears momentarily on the walls before dissolving into new forms. A particular recurring image shows an immense castle balanced precariously on rocky crags, its countless towers and buttresses extending like the roots of an ancient tree. In the center of the room floats what appears to be a perfect sphere of water, somehow maintaining its shape without a container, its surface reflecting yet more geographical images.

A doorway leads south."

The reality-stability of the Projection Room is 2.

The south door is a door. The south door is south of the Projection Room and north of the Chamber of Scales.

The floating water sphere is scenery in the Projection Room. "A perfect sphere of water approximately three feet in diameter hovers in the center of the chamber, slowly rotating. Its surface reflects the light projections around the room, but also shows images of its own - landscapes that shift and change as if viewed from a great height, continually morphing into new configurations." Understand "sphere" or "water" or "water sphere" as floating water sphere.

The shifting light projections are scenery in the Projection Room. "Constantly changing projections of light play across every surface of the chamber. They depict landscapes, cities, oceans, and stranger geographies in astonishing detail. When you focus your attention on any particular region you've visited, it seems to appear briefly in the projections before dissolving away." Understand "projections" or "light" or "images" as shifting light projections.

The projection pedestal is a supporter in the Projection Room. "A small stone pedestal occasionally fades into existence near the center of the room, particularly when you concentrate on maps or specific locations." The description is "A simple stone cylinder about waist-high that appears and disappears irregularly. When present, its top surface bears a shallow depression that might hold a small object." Understand "pedestal" or "small pedestal" as projection pedestal.

The Observatory of Unknown Stars is west of the Cartographers' Hall. "The domed ceiling of this circular chamber is somehow transparent, revealing a star-filled sky that cannot possibly be the one above the valley you entered hours ago. Constellations you've never seen wheel slowly overhead, while a massive bronze apparatus dominates the center of the room - something like an armillary sphere, but with far more rings and measuring devices than any you've studied. It turns almost imperceptibly, tracking celestial bodies that no human eye should be able to see from this world. Around the perimeter, smaller viewing instruments are positioned at intervals, each aimed at a different quadrant of the impossible sky. One telescope appears to be focused on a distant tower in a crumbling castle complex that resembles illustrations of Gormenghast you once saw in a forbidden volume.

A single doorway leads east back to the Cartographers' Hall."

The Chamber of Scales is a room. "The concept of distance itself seems to warp in this disquieting room. At one end stands a miniature model of a mountain range that, as you approach, grows until you feel as though you could step into its valleys. At the opposite end, what appeared from the doorway to be a life-sized statue of a compass reveals itself as a tiny trinket when examined up close. The walls are lined with measuring tools of every description - rods, chains, astrolabes, sextants - though many are of designs you've never encountered despite your specialized training. Among the implements is a small knife, useful for examining grues in the dark, if you were suicidal enough to attempt such a thing. In the center of the floor, a mosaic depicts what might be the same valley you're mapping, but seen from an impossible perspective that shows both the surface and what lies beneath simultaneously.

A shimmer in the air to the west suggests a hidden passage, while a doorway to the north leads to the Projection Room. The Drafting Chamber lies to the south."

The reality-stability of the Chamber of Scales is 3.

The miniature mountain range is scenery in the Chamber of Scales. "What appears from a distance to be a small model of mountains becomes increasingly large and detailed as you approach, until it seems you could step into its valleys and climb its peaks. When you back away, it shrinks back to model size. The effect is deeply unsettling to your cartographer's sense of scale and proportion." Understand "mountain" or "mountains" or "range" or "model" as miniature mountain range.

The measuring tools are scenery in the Chamber of Scales. "An assortment of surveying and measuring tools lines the walls - some familiar, like measuring chains and levels, others of completely unfamiliar design. When you look closely at any specific tool, it seems to shift and change, as if refusing to be properly observed or categorized." Understand "tools" or "implements" or "instruments" as measuring tools.

The small knife is in the Chamber of Scales. "A small, sharp knife with an ivory handle rests among the measuring tools." The description is "A finely crafted knife with a blade of unusual metal that seems to absorb rather than reflect light. The ivory handle is carved with a repeating pattern of interlocking geometric shapes. It looks both ancient and impossibly well-preserved." Understand "knife" as small knife.

The chamber floor mosaic is scenery in the Chamber of Scales. "The floor features an intricate mosaic depicting the valley from above, but with an impossible perspective that somehow shows both the surface and the underground complex simultaneously, as if the earth were transparent. The detail is extraordinary, and you recognize every location you've visited so far." Understand "mosaic" or "floor" or "floor mosaic" as chamber floor mosaic.

[Scale puzzle]
The scales-puzzle-state is a number that varies. The scales-puzzle-state is 0.

The Drafting Chamber is south of the Chamber of Scales. "Unlike the mystical nature of the previous chambers, this room has a practical, workshop-like quality. Drafting tables of various designs are arranged in a semicircle, each bearing partial maps in different stages of completion. Cabinets line the walls, their glass fronts revealing drawers of specialized tools, ink pots in colors you've never seen before, and rolls of material that can't quite be identified as paper or parchment. A bronze plaque over one cabinet reads 'FrobozzCo International - Cartographic Division.' Most intriguing is the central table, where a map appears to be drawing itself, the lines flowing across the surface without any visible hand guiding them, charting territories both familiar and impossible.

A sturdy door leads north, while a narrow corridor extends to the west."

The reality-stability of the Drafting Chamber is 4.

The self-drawing map is scenery in the Drafting Chamber. "A large sheet of what appears to be parchment lies on the central table, with lines, symbols, and topographical features drawing themselves across its surface in real time. The map depicts a region you don't recognize, with coastlines and mountain ranges that shift subtly as you watch. Occasionally, sections erase and redraw themselves as if the cartographer is adjusting their work." Understand "map" or "drawing" or "self-drawing map" as self-drawing map.

The drafting tools are scenery in the Drafting Chamber. "An impressive collection of specialized cartographic instruments - compasses, dividers, scales, protractors, and more exotic devices you don't recognize. The precision of their manufacture is beyond anything you've seen, even in the Royal Geographical Society's workshops." Understand "tools" or "instruments" as drafting tools.

The glass cabinets are scenery in the Drafting Chamber. "Glass-fronted cabinets line the walls, containing drawers and compartments filled with specialized cartographic supplies. One cabinet contains ink in colors you've never seen before, another holds materials that resemble paper but seem to shimmer and shift when not directly observed." Understand "cabinets" or "cabinet" or "drawers" as glass cabinets.

The bronze plaque is scenery in the Drafting Chamber. "A polished bronze plaque mounted above one of the cabinets reads 'FrobozzCo International - Cartographic Division' with a smaller line below stating 'Authorized Personnel Only - Reality Clearance Level 7 Required'." Understand "plaque" as bronze plaque.

The Commissioner's Office is west of the Drafting Chamber. "Opulent furnishings and rich tapestries give this chamber the appearance of a high official's study rather than part of an ancient underground complex. A massive desk of dark, polished wood dominates the space, its surface neat and ordered with a single document centered precisely upon it. On one shelf sits a small trophy engraved with 'FrobozzCo International Cartographer of the Year.' Behind the desk, a high-backed chair faces away from you, toward a fireplace in which flames burn without consuming the wood. Bookshelves line the walls, containing volumes bound in materials you prefer not to identify too closely. The air feels charged with expectation, as if the room itself has been waiting for your arrival.

The only visible exit is the corridor leading east back to the Drafting Chamber, though something about the fireplace suggests it might not be as solid as it appears."

The reality-stability of the Commissioner's Office is 5.

The commission document is a thing. "A formal-looking document lies precisely centered on the desk." The description is "A formal-looking document written in elegant script on what appears to be vellum. The heading reads 'Invitation to the Order of True Geographers' and below is detailed the true purpose of your commission - not merely to map the valley, but to be tested for the innate ability to perceive and navigate impossible geography. The document awaits only your signature to formalize your membership in this ancient order." Understand "document" or "invitation" as commission document.

The commissioner's desk is a supporter in the Commissioner's Office. "A massive desk of dark, polished wood dominates the center of the room. Its surface is immaculate, with only the commission document placed exactly in the center." The description is "An imposing desk crafted from a dark, polished wood you don't recognize. The craftsmanship is exquisite, with intricate carvings depicting maps unfurling into reality around its edges. The surface holds only the commission document, positioned with almost supernatural precision at its center." Understand "desk" as commissioner's desk.

The commission document is on the commissioner's desk.

The high-backed chair is scenery in the Commissioner's Office. "A tall, ornately carved chair behind the desk, currently facing away from you toward the fireplace. Something about its positioning suggests it might be occupied, though you can't see if anyone is sitting in it from your current angle." Understand "chair" as high-backed chair.

The trophy is scenery in the Commissioner's Office. "A small golden trophy sits on one of the bookshelves. Its inscription reads 'FrobozzCo International Cartographer of the Year - For Excellence in Reality Manipulation Through Precise Documentation'." Understand "trophy" or "award" as trophy.

The fireplace is scenery in the Commissioner's Office. "A grand fireplace built into the western wall. Flames dance within it, yet the wood doesn't appear to be consumed. The longer you look at it, the more you suspect it might not be a conventional fireplace at all, but something else disguised as one." Understand "fireplace" or "fire" or "flames" as fireplace.

[NPC - The Commissioner]
The Commissioner is a person in the Commissioner's Office. "A figure of indeterminate age sits in the high-backed chair, now turned to face you. Their features seem to shift slightly when not directly observed, as if refusing to be mapped precisely in your memory. Dressed in formal attire that somehow combines elements of different historical periods, they regard you with eyes that reflect a depth of knowledge that makes you feel like a child holding your first crude crayon drawing." The description is "The Commissioner's appearance seems to fluctuate subtly at the edges of your perception. When you try to focus on specific features, they seem to shift and change, making it impossible to form a concrete image. Only the eyes remain constant - deep and measuring, like they're calculating the distance between worlds."

Instead of asking the Commissioner about something:
	say "The Commissioner regards you thoughtfully. 'You've done remarkably well to reach this place. Few candidates progress this far on their first attempt. But now you face the true decision - will you join our Order and learn to shape reality through the art of cartography, or will you reject our offer and return to the mundane world above?'";
	now the secret passage is not scenery.

Instead of asking the Commissioner about "order/true/geographers/cartographers":
	say "'The Order of True Geographers has existed since humanity first began to document the nature of reality,' explains the Commissioner. 'We discovered long ago that the act of mapping doesn't merely record geography - it can shape it. The most skilled cartographers don't simply document reality; they participate in its creation. The ruins you explored were built by our predecessors thousands of years ago, not [']recently discovered['] as your commission claimed. That was merely a test to find those with the potential to join our ranks.'";
	now the secret passage is not scenery.

Instead of asking the Commissioner about "artifact/orb/map/true":
	say "The Commissioner gestures toward the fireplace. 'Beyond lies what we seek - the Prime Artifact, a nexus point in reality's cartography. It grants the bearer the ability to reshape existence through the art of mapmaking. It's what our Order has sought for centuries. We believe you may be able to claim it where others have failed.'";
	now the secret passage is not scenery.

[Secret passage to the True Map - revealed after confronting the Commissioner]
The secret passage is a door. The secret passage is west of the Commissioner's Office and east of the True Map. The secret passage is scenery. The secret passage is closed. "The fireplace seems... different now, as if it were more of a doorway than a hearth. The flames part in the center, revealing a passage beyond." Understand "passage" or "secret passage" as secret passage.

Instead of opening the secret passage:
	say "As you approach the fireplace, the flames part before you, revealing a passage where solid stone should be. The Commissioner nods with satisfaction. 'Go. Claim your destiny - or reject it. The choice, cartographer, is yours.'";
	now the secret passage is open.

The True Map is a room. "You stand at the edge of infinity. The chamber, if it can be called such, extends beyond perception in all directions. Beneath your feet, above your head, and stretching to every horizon is a map of such complexity and detail that it can only represent one thing: reality itself. Continents, oceans, mountains, cities from your world are just a tiny fraction of what's depicted. The map shows worlds upon worlds, realms adjacent to reality, planes of existence beyond comprehension, all interlocking like puzzle pieces in a cosmic whole. One region bears the label 'G.U.E. - Prototype Reality,' while another shows what appears to be an immense, aging castle labeled simply 'Gormenghast.' At the very center, hovering at eye level, is a small, glowing point that pulses like a heartbeat - the artifact your employers truly sent you to find.

There appears to be no exit, though your presence here suggests one must exist."

The reality-stability of the True Map is 1.

The reality artifact is a thing in the True Map. "A small, glowing orb hovers at the center of the infinite map-space, pulsing like a heartbeat." The description is "A small, glowing orb that seems to contain galaxies within its surface. As you study it, you sense that it somehow connects to the very fabric of reality, and that possessing it would grant tremendous power over the nature of existence itself. This must be what the Order has been seeking." Understand "artifact" or "orb" or "glowing orb" as reality artifact.

The true map of all realities is scenery in the True Map. "The map extends infinitely in all directions, containing everything that is, was, or could be. Different regions seem to represent different realities or worlds, some familiar, others utterly alien. The connections between them form patterns too complex for your mind to fully comprehend." Understand "map" or "realities" or "true map" as true map of all realities.

The infinity desk is a supporter in the True Map. The description of the infinity desk is "A modest wooden desk that seems absurdly ordinary given its setting in the infinite map-space. A leather-bound notebook and quill pen rest upon its surface, as if waiting for someone to record their observations." Understand "desk" or "small desk" as infinity desk.

The printed name of the infinity desk is "small wooden desk".

After looking in the True Map:
	say "A simple wooden desk and chair stand incongruously in the infinite space, as if someone occasionally sits here to make adjustments to the map of reality."

The notebook and quill is scenery on the infinity desk. "A leather-bound notebook lies open on the desk, with a quill pen beside it. The visible pages contain notes in a flowing script you can't quite read, alongside sketches of geographic features that seem to shift when not directly observed." Understand "notebook" or "quill" or "pen" as notebook and quill.

[Dense Forest section]
Before going west from the Meadow Clearing:
	if the player-perception < 3:
		say "The western path appears completely overgrown and impassable. You might be able to force your way through with great effort, but it doesn't seem worth the trouble.";
		stop the action;
	else:
		continue the action.

The Dense Forest Path is a room. The Dense Forest Path is west of the Meadow Clearing. "The foliage here crowds in from all sides, forming a claustrophobic tunnel of vegetation. Shafts of light pierce through the canopy at odd angles, illuminating floating motes of pollen and creating an almost submarine quality to the atmosphere. The path twists unnaturally, seeming to fold back on itself in a way that defies your cartographer's sense of direction. What should be a straight westward route somehow manages to travel both north and down simultaneously.

The dense undergrowth opens back to the clearing to the east, while continuing west would take you deeper into the increasingly strange forest."

The Keeper's Hovel is west of the Dense Forest Path.

The reality-stability of the Dense Forest Path is 7.

The strange fungus is scenery in the Dense Forest Path. "Patches of luminescent fungus grow on several tree trunks, emitting a soft blue-green glow that creates eerie shadows in the dense foliage." Understand "fungus" or "mushrooms" as strange fungus.

The twisted tree is scenery in the Dense Forest Path. "One tree among many stands out for its disturbing configuration - its trunk and branches seem to form the silhouette of a human figure frozen mid-stride, as if a person were turned to wood while walking along the path." Understand "tree" as twisted tree.

The Keeper's Hovel is a room. "What first appears as a tangle of roots and fallen timber resolves itself, upon closer inspection, into a deliberately constructed dwelling. The hovel is built against and into a massive tree trunk, with a roof of woven branches and walls of packed earth and stone. Shelves line the interior, crowded with glass bottles containing specimens and fluids of dubious origin. A small desk bears the weight of hundreds of scrolls, stacked precariously. Most curious is the occupant's bed – suspended from the ceiling in a sling of woven vines, gently swaying though there is no breeze.

The only exit appears to be the narrow door to the east, leading back to the forest path."

The reality-stability of the Keeper's Hovel is 6.

The Keeper Steerpike is a person in the Keeper's Hovel. "A gaunt figure hunched over a desk barely acknowledges your entry. His impossibly long fingers trace patterns on a scroll while murmuring calculations under his breath." The description is "A gaunt man with angular features and long, nimble fingers. His eyes constantly measure and calculate, as if he's mentally mapping everything in his field of vision. He wears layers of tattered robes covered in pockets filled with measuring tools, ink pots, and scraps of paper. A cap of peculiar design sits askew on his head, bearing what looks like a miniature sextant attached to its brim."

The specimen bottles are scenery in the Keeper's Hovel. "Glass bottles of various sizes fill the shelves, containing an assortment of preserved specimens - plant fragments, mineral samples, and things you prefer not to identify too closely. Each is meticulously labeled in a cramped, precise hand." Understand "bottles" or "specimens" as specimen bottles.

The scroll collection is scenery in the Keeper's Hovel. "Hundreds of scrolls are stacked precariously on the desk and in cubbyholes along the walls. From what you can glimpse of their contents, they appear to contain maps, astronomical observations, and complex mathematical notations." Understand "scrolls" as scroll collection.

The brass key is in the Keeper's Hovel. "A brass key hangs from a hook on the wall." The description is "A heavy brass key of unusual design. Rather than teeth, it features a complex arrangement of geometric shapes at its end. The handle is formed in the shape of a compass rose." Understand "key" as brass key.

The leatherbound journal is in the Keeper's Hovel. "A worn leatherbound journal lies atop the scroll pile on the desk." The description is "A journal bound in cracked leather, its pages filled with observations and theories about the valley's unusual geography. Many entries discuss the concept of 'reality stability' and methods for measuring and manipulating it. The most recent entry mentions a 'Commission' and expresses concern about 'them sending another one so soon.'" Understand "journal" as leatherbound journal.

The Keeper Steerpike can be friendly or unfriendly. The Keeper Steerpike is unfriendly.

Instead of asking Keeper Steerpike about something:
	say "The gaunt man looks up from his work, eyes narrowing as he studies you. 'Another one sent to map the unknowable? How... predictable.' His voice has the quality of rustling parchment. 'They never tell you initiates what you're really measuring, do they? Typical Cartographic Bureau bureaucracy.'";
	now the Keeper Steerpike is friendly.

Instead of asking the Keeper Steerpike about "valley/map/commission":
	if the Keeper Steerpike is friendly:
		say "'This valley?' He laughs, a dry sound like crumpling paper. 'It's not just a valley, surveyor. It's a nexus point - a place where reality itself has worn thin from repeated mapping. The more it's documented, the more... malleable it becomes. Your [']Royal Geographical Society['] knows this well. That's why they keep sending fresh cartographers here. To see which ones can perceive the truth beneath the surface.'";
	else:
		say "He regards you suspiciously. 'I'm not inclined to discuss such matters with someone I've just met.'"

Instead of asking the Keeper Steerpike about "order/geographers/society":
	if the Keeper Steerpike is friendly:
		say "Steerpike's eyes dart nervously to the door before he whispers, 'The Order has existed for millennia, manipulating reality through precise documentation. Cartography isn't just about recording what exists - it's about defining it. The most powerful maps don't follow reality; reality follows them. I was like you once, sent here on a [']commission.['] I chose to flee rather than join their ranks. Now I hide in the folds of their own creation, studying their methods while avoiding their notice.'";
	else:
		say "He stiffens slightly. 'I know of no such organization,' he says, though his expression suggests otherwise."

[Secret Grave chamber]
The Cartographer's Graveyard is a room. "Cold silence pervades this hidden chamber, where dozens of simple stone markers stand in neat rows. Each bears a name, date, and the same epitaph: 'Lost in the mapping.' The dates span centuries, suggesting the Order's work has claimed many lives over generations. Most unsettling is a fresh marker with no name yet carved, as if awaiting its occupant.

A narrow stairway provides the only exit upward."

The reality-stability of the Cartographer's Graveyard is 4.

The stone markers are scenery in the Cartographer's Graveyard. "Simple stone tablets arranged in orderly rows. Each bears a name, date, and the epitaph 'Lost in the mapping.' The dates range from centuries ago to as recent as last year. Some names have titles or notations like 'Master Cartographer' or 'Reality Engineer.'" Understand "markers" or "graves" or "tombstones" as stone markers.

The unnamed marker is scenery in the Cartographer's Graveyard. "A fresh stone marker stands apart from the others, its surface newly cut but bearing no name yet. Only the epitaph has been carved: 'Lost in the mapping.' The sight of it sends a chill down your spine, as if it were prepared specifically in anticipation of your arrival." Understand "fresh marker" or "unnamed grave" or "unnamed stone" as unnamed marker.

[Wandering NPC - The Apprentice]
The Apprentice Cartographer is a person. "A young woman in practical traveling clothes stands nearby, making careful notations in a leather-bound journal." The description is "A young woman in practical traveling clothes, with ink stains on her fingers and a determined gleam in her eyes. A brass compass hangs from a chain around her neck, though you notice its needle doesn't point north but rather toward the most significant geographical feature nearby."

Instead of asking the Apprentice Cartographer about something:
	say "The young woman glances up from her journal, studying you with shrewd eyes. 'Oh! I didn't expect to find another surveyor here. Did Barquentine send you as well? He didn't mention anything about a partner.' She extends a hand. 'I'm Tessa. Three weeks into my commission, and I still feel like I've barely scratched the surface of this place. The geography... it doesn't always make sense, does it?'";
	now the Apprentice Cartographer is in the location.

Instead of asking the Apprentice Cartographer about "commission/barquentine/society":
	say "'So we're in the same position,' Tessa says, nodding. 'Commissioned by the Royal Geographical Society to map this valley. Though I'm beginning to suspect there's more to this assignment than I was told initially. The geographical anomalies I've encountered... well, they shouldn't be possible. And I've found references to previous surveyors, though Barquentine told me this area was newly discovered.' She lowers her voice. 'Between us, I think we're being tested for something. The question is, what happens if we pass?'"

Instead of asking the Apprentice Cartographer about "ruins/temple/underground":
	say "Tessa's eyes light up with excitement. 'You've found the temple ruins? I've been trying to locate them for days! My instructions mentioned them specifically, but the landmarks kept shifting on me.' She flips through her journal. 'My notes suggest there might be something beneath the temple - some kind of underground complex. But that seems unlikely, doesn't it? Unless...' She trails off, looking troubled. 'Unless the whole commission is about something else entirely.'"

[Mysterious Observer]
The Observer is a person. "At the edge of your vision, you notice a figure standing perfectly still, watching you with what appears to be a brass mask covering their face." The description is "A figure dressed in formal attire of an antiquated style, their face obscured by what appears to be a brass mask fashioned in the likeness of a compass rose. They remain motionless, neither approaching nor retreating, the strange mask turning slightly to track your movements."

Instead of asking the Observer about something:
	say "When you try to address the figure, they remain silent and still. As you take a step toward them, they seem to fade from view, like mist dissipating in sunlight.";
	remove the Observer from play.

[==========================================================================]
[                           CORE MECHANICS                                 ]
[==========================================================================]

[Cartography System Implementation]

[Basic Map Command]
Understand "map" or "make map" or "draw map" or "create map" as mapping.
Mapping is an action applying to nothing.

Carry out mapping:
	if the player carries the player-map:
		if the reality-stability of the location > 5:
			say "You take out your map and carefully document the current location, adding details with practiced precision. The features transfer easily to paper, and you're confident in the accuracy of your work.";
			increase the accuracy-rating of the player-map by 1;
		else if the reality-stability of the location > 3:
			say "You attempt to map this location, but something about the space makes it difficult to translate to paper. Distances seem inconsistent, and angles don't quite add up. You manage a rough approximation, though you're not entirely satisfied with its accuracy.";
			increase the accuracy-rating of the player-map by 1;
		else:
			say "You try to map this strange place, but conventional cartographic techniques seem woefully inadequate. The space refuses to be properly documented, shifting and changing even as you attempt to measure it. Your resulting sketch is more impression than accurate map.";
		if the accuracy-rating of the player-map > 10:
			now the accuracy-rating of the player-map is 10;
	else:
		say "You need your map to document this location."

[Direction-specific mapping]
Understand "map [direction]" or "chart [direction]" as mapping direction.
Mapping direction is an action applying to one visible thing.

Check mapping direction:
	if the noun is not a direction:
		say "You can only map in a compass direction." instead.

Carry out mapping direction:
	let target be the room noun from the location;
	if target is a room:
		if the player carries the player-map:
			say "You study the area to the [noun], noting key features and landmarks on your map.";
			increase the accuracy-rating of the player-map by 1;
			if the accuracy-rating of the player-map > 10:
				now the accuracy-rating of the player-map is 10;
		else:
			say "You need your map to document this direction.";
	else:
		say "There's nothing in that direction to map."

[Consult Map]
Consulting-the-map is an action applying to nothing.
Understand "consult map" or "check map" or "look at map" or "study map" as consulting-the-map.

Instead of consulting-the-map:
	try examining the player-map.

Understand "consult map about [text]" or "check map for [text]" as consulting map about.
Consulting map about is an action applying to one topic.

Carry out consulting map about:
	if the player carries the player-map:
		if the topic understood matches "ruins/temple/complex":
			say "Your map shows the temple ruins located southeast of the monoliths, with the main entrance through the ruined gatehouse.";
		else if the topic understood matches "monoliths/stones/pillars":
			say "According to your map, the ancient monoliths are north of the central meadow clearing.";
		else if the topic understood matches "brook/stream/water":
			say "Your map indicates the babbling brook runs from northeast to southwest, with stepping stones providing a crossing point near the path to the ruins.";
		else if the topic understood matches "underground/below/complex":
			if the player-perception > 3:
				say "Your enhanced cartographer's senses have allowed you to document portions of the underground complex, though the spatial relationships are difficult to represent conventionally on paper.";
			else:
				say "Your map currently only shows surface features. You would need to explore any underground areas before they could be documented.";
		else:
			say "Your map doesn't contain any specific information about that.";
	else:
		say "You need your map to consult it."

[Taking Rubbings]
Understand "take rubbing" or "make rubbing" or "do rubbing" as "[taking a rubbing]".
Understand "take rubbing of [something]" or "make rubbing of [something]" or "do rubbing of [something]" as taking rubbing of.
Taking rubbing of is an action applying to one thing.

Check taking rubbing of:
	if the player does not carry the blank paper:
		say "You need paper to make a rubbing." instead;
	if the player does not carry the charcoal stick:
		say "You need something to make marks with to create a rubbing." instead.

Carry out taking rubbing of:
	if the noun is the oak markings:
		now the player carries the oak cipher;
		now the blank paper is nowhere;
		say "You place the paper against the marked surface of the oak and carefully rub the charcoal over it, revealing the pattern of symbols. As the full design emerges, you realize it's some sort of cipher or instruction set, possibly related to the ruins mentioned in your commission.";
	else if the noun is the brass plate:
		now the player carries the brass rubbing;
		now the blank paper is nowhere;
		say "You make a careful rubbing of the brass plate, revealing intricate astronomical symbols and what appears to be a set of instructions.";
	else if the noun is the carved lintel stone:
		now the player carries the lintel rubbing;
		now the blank paper is nowhere;
		say "You create a detailed rubbing of the lintel stone carving, capturing the intricate design of a map unfurling into reality.";
	else:
		say "That surface isn't suitable for taking a rubbing.";
		rule fails.

The brass rubbing is a thing. The description is "A rubbing taken from the brass plate at the monoliths. It shows astronomical symbols arranged in a specific pattern, with markings that might indicate alignments or rotational positions." Understand "rubbing" as brass rubbing.

The lintel rubbing is a thing. The description is "A rubbing of the carved lintel stone from the gatehouse. It depicts a map being unfolded or unfurled, with reality seemingly emerging from its surface - an oddly literal representation of cartography creating the world." Understand "rubbing" as lintel rubbing.

[Reality Distortion Effects]
After going in the Chamber of Scales:
	if a random chance of 1 in 3 succeeds:
		say "[one of]As you move through the chamber, distances seem to contract and expand unpredictably. What looked like a short walk stretches on impossibly, while distant objects suddenly appear within arm's reach.[or]Your sense of scale wavers as you move - at one moment feeling like a giant in a miniature room, the next like an insect in an immense hall, though nothing visibly changes.[or]The geometry of the room defies your cartographer's training. Angles that should sum to 180 degrees somehow measure more, and parallel lines appear to converge without meeting.[at random]";
	continue the action.

After going in the Projection Room:
	if a random chance of 2 in 3 succeeds:
		say "[one of]Reality ripples around you as you move, the light projections responding to your passage by creating geographic features beneath your feet. You seem to walk across mountains, oceans, and cities with each step.[or]The chamber reconfigures itself as you move, distances expanding and contracting in impossible ways. What appeared to be the far wall now seems just a few steps away, while the entrance you just used recedes to an impossible distance.[or]For a moment, your perception splits, and you see this same room from multiple angles simultaneously - as if viewing it from above, below, and from each cardinal direction all at once.[at random]";
	continue the action.

After going in the True Map:
	say "Moving through this infinite map-space defies conventional understanding. You seem to traverse vast distances with each step, passing continents, oceans, and entire realities, yet somehow remaining in the same relative position to the glowing artifact at the center.";
	continue the action.

[==========================================================================]
[                          PUZZLE AND REALITY MECHANICS                     ]
[==========================================================================]

[Examining the model with increasing perception]
The model-examination-count is a number that varies.

After examining the three-dimensional model:
	increment the model-examination-count;
	if the model-examination-count is 1:
		say "The model shows the valley from above, with incredible precision.";
	else if the model-examination-count is 2:
		say "Looking from a different angle, you notice the model continues below the valley floor, showing subterranean chambers.";
	else if the model-examination-count is 3:
		say "Studying carefully, you notice tiny markings that seem to indicate hidden passages between chambers.";
	else if the model-examination-count is 4:
		say "You spot a subtle shimmer indicated in the eastern wall of what must be the Library of Distances.";
		now the shimmer-visible is true;
	else:
		say "The model continues to reveal subtle details with each examination, as if responding to your growing understanding of this place."

[Tome reading for shimmer passage]
The tome-reading-count is a number that varies.

After examining the impossible tome:
	increment the tome-reading-count;
	if the tome-reading-count is 1:
		say "The tome contains descriptions of the valley that match your observations, but with additional details you haven't yet discovered.";
	else if the tome-reading-count is 2:
		say "The pages now show theories of 'spatial folding' and 'reality mapping' that challenge your understanding of geography.";
	else if the tome-reading-count is 3:
		say "The text describes how perception shapes reality, and how trained cartographers can learn to see pathways where others see only solid matter.";
		now the shimmer-visible is true;
	else:
		say "The text seems to respond to your thoughts, revealing information about whatever location you consider."

[Focusing thoughts in the Projection Room]
Understand "focus on [text]" or "think about [text]" or "concentrate on [text]" as focusing.
Focusing is an action applying to one topic.

Carry out focusing:
	if the location is the Projection Room:
		if the topic understood matches "oak/tree":
			say "As you focus on the ancient oak, its image appears momentarily in the floating sphere, rendered in perfect detail.";
		else if the topic understood matches "monoliths/stones":
			say "The three monoliths appear in the projections as you concentrate on them, shown from an impossible aerial perspective.";
		else if the topic understood matches "ruins/temple":
			say "The temple ruins materialize in the light patterns as you think about them, revealing details you hadn't noticed during your exploration.";
		else if the topic understood matches "map/journey/path":
			say "As you mentally trace your journey through the valley, the projections respond by showing your path as a glowing line across a detailed landscape.";
		else:
			say "The light projections shimmer and shift, but don't form any coherent response to your thoughts.";
	else:
		say "Your mind wanders, but nothing unusual happens."

[Reality artifact final choice]
Taking-the-artifact is an action applying to nothing. [New action definition]
Understand "take artifact" or "take orb" or "grab artifact" or "grab orb" as taking-the-artifact. [Changed Understand rule]

Instead of taking-the-artifact: [New Instead rule]
	try taking the reality artifact.

Instead of taking the reality artifact:
	say "As your fingers close around the artifact, power surges through you. Suddenly, you understand - this is a nexus point in the cartography of reality itself. With it, you could reshape the very nature of existence.[paragraph break]Do you wish to join the Order of True Geographers and wield this power? (YES or NO)";
	now the command prompt is "Your choice > ".

After reading a command when the command prompt is "Your choice > ":
	if the player's command matches "yes":
		say "You embrace your new role as a True Geographer. With the artifact's power flowing through you, you see reality as it truly is - not a fixed domain, but a canvas to be mapped and remapped according to the will of those with the skill and understanding to do so.[paragraph break]The Commissioner appears beside you, nodding with approval. 'Welcome to the Order,' they say, their features finally stabilizing into someone recognizable. 'Your apprenticeship is complete. Now the real work begins.'[paragraph break]As you look down at the map beneath your feet, you realize you can already see how to improve upon it...[paragraph break]*** You have joined the Order of True Geographers ***";
		end the story finally saying "You have mastered cartographic reality manipulation";
	else if the player's command matches "no":
		say "You realize you cannot take this responsibility. To reshape reality itself is too great a burden, too dangerous a power.[paragraph break]'A wise choice,' says the Commissioner, suddenly beside you. 'Few have the wisdom to reject such power. You may not join us, but you have earned our respect.'[paragraph break]The Commissioner gestures, and a doorway appears, leading back to the surface world. As you step through, you know your maps will never be the same again - for you have seen the truth behind reality's veil.[paragraph break]*** You have chosen the path of wisdom ***";
		end the story finally saying "You have chosen wisdom over power";
	else:
		say "You must decide: YES to accept the power and join the Order, or NO to reject it.";
		stop the action.

Understand "destroy artifact" or "destroy orb" or "break artifact" or "break orb" as destroying the artifact.

Destroying the artifact is an action applying to nothing.

Carry out destroying the artifact:
	say "With resolute determination, you strike the artifact against the ground. For a moment, nothing happens - then cracks appear across its surface, spilling brilliant light. The Commissioner materializes, face contorted with rage and fear.[paragraph break]'You fool! Do you know what you've done?'[paragraph break]The map chamber begins to fold in on itself, reality reasserting its proper shape as the Order's influence wanes. You run, barely staying ahead of the collapsing unreality, finally emerging into the valley above as the entrance seals forever behind you.[paragraph break]Looking around, you notice the valley seems...ordinary now. The strange qualities that permeated it are gone. You check your maps and find they show nothing but conventional geography.[paragraph break]You've prevented the Order from reshaping reality to their design, but at the cost of ever creating truly magical maps again.[paragraph break]*** You have restored reality's proper course ***";
	end the story finally saying "You have restored the natural order".

[==========================================================================]
[                           TESTING COMMANDS                               ]
[==========================================================================]

[Skip puzzle for testing]
Understand "skip puzzle [text]" as skipping puzzle.
Skipping puzzle is an action applying to one topic.

Carry out skipping puzzle:
	if the topic understood matches "oak":
		now the player carries the oak cipher;
		say "Oak cipher puzzle skipped.";
	else if the topic understood matches "stones":
		now the stepping-stones-puzzle-state is 3;
		say "Stepping stones puzzle skipped.";
	else if the topic understood matches "monoliths":
		now the monolith-puzzle-state is 3;
		say "Monolith alignment puzzle skipped.";
	else if the topic understood matches "sundial":
		now the sundial-puzzle-state is 3;
		say "Sundial puzzle skipped.";
	else if the topic understood matches "mosaic":
		now the mosaic-puzzle-state is 3;
		say "Floor mosaic puzzle skipped.";
	else if the topic understood matches "disc":
		now the bronze-disc-puzzle-state is 3;
		now the hidden door is unlocked;
		now the hidden door is open;
		say "Bronze disc puzzle skipped.";
	else if the topic understood matches "all":
		now the player carries the oak cipher;
		now the stepping-stones-puzzle-state is 3;
		now the monolith-puzzle-state is 3;
		now the sundial-puzzle-state is 3;
		now the mosaic-puzzle-state is 3;
		now the bronze-disc-puzzle-state is 3; 
		now the hidden door is unlocked;
		now the hidden door is open;
		say "All puzzles skipped.";
	else:
		say "Unknown puzzle name."

[Increase perception for testing]
Understand "increase perception" as increasing perception.
Increasing perception is an action applying to nothing.

Carry out increasing perception:
	increase the player-perception by 1;
	if the player-perception > 10:
		now the player-perception is 10;
	say "Perception increased to [player-perception]."

[Teleport command for testing]
Understand "teleport to [any room]" as teleporting.
Teleporting is an action applying to one visible thing.

Carry out teleporting:
	let the target be the noun;
	if the target is a room:
		move the player to the target;
		say "You have teleported to [the target].";
	else:
		say "That's not a valid location."

[==========================================================================]
[                         INITIALIZATION                                   ]
[==========================================================================]

When play begins:
	say "The Royal Geographical Society's commission seemed straightforward enough: map a newly discovered valley and document the ruins rumored to lie within it. As an apprentice cartographer eager to prove yourself, you accepted without hesitation.[paragraph break]Now, standing at the edge of the verdant valley, survey tools in hand, you wonder if there's more to this assignment than you were told. Something about the way your patron described the commission, with oblique references to 'geographical anomalies' and 'unique spatial properties,' suggested this was no ordinary mapping expedition.[paragraph break]What secrets might this valley hold? There's only one way to find out...";
	wait for any key;
	clear the screen.

[==========================================================================]
[                           TEST SCRIPT                                    ]
[==========================================================================]

Test me with "n / x oak / x markings / open cairn / x coin / take coin / take rubbing of markings / e / x brook / x stones / x box / n / x monoliths / x pedestal / x plate / take rubbing of plate / se / x sign / x lintel / take rubbing of lintel / x gargoyle / e / x sundial / get tool / x fountain / x column / n / x mosaic / x pedestals / x plate / n / x disc / x altar / get sconce / x footprints / x mailbox / skip puzzle all / d / x doors / x markings / x dust / x model / x model / x model / x model / x maps / get lens / get sextant / e / x tome / x tome / x tome / x books / x desk / x lamp / x ladder / w / w / x sky / x apparatus / x instruments / e / e / open shimmer / e / x mountains / x tools / get knife / x mosaic / n / x sphere / x projections / x pedestal / focus on ruins / s / s / x map / x tools / x cabinets / x plaque / w / x document / x desk / x chair / x trophy / x fireplace / ask commissioner about order / ask commissioner about artifact / open passage / w / x artifact / x map / x desk / x notebook / take artifact / yes".