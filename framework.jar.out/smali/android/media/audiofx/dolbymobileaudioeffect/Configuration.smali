.class Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static GetInitialCustomPresets()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 274
    .local v0, presets:Ljava/util/Vector;,"Ljava/util/Vector<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;>;"
    return-object v0
.end method

.method static GetPresets()Ljava/util/Vector;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x3

    .line 53
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 59
    .local v6, presets:Ljava/util/Vector;,"Ljava/util/Vector<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v3, allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x20

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_1

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_2

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_3

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_4

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_5

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_6

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_7

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_8

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_9

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_a

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_b

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_c

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_d

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_e

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_f

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_10

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_11

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_12

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_13

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_14

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_15

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_16

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_17

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_18

    aput-object v7, v2, v5

    const/16 v5, 0x19

    new-array v7, v8, [I

    fill-array-data v7, :array_19

    aput-object v7, v2, v5

    const/16 v5, 0x1a

    new-array v7, v8, [I

    fill-array-data v7, :array_1a

    aput-object v7, v2, v5

    const/16 v5, 0x1b

    new-array v7, v8, [I

    fill-array-data v7, :array_1b

    aput-object v7, v2, v5

    const/16 v5, 0x1c

    new-array v7, v8, [I

    fill-array-data v7, :array_1c

    aput-object v7, v2, v5

    const/16 v5, 0x1d

    new-array v7, v8, [I

    fill-array-data v7, :array_1d

    aput-object v7, v2, v5

    const/16 v5, 0x1e

    new-array v7, v8, [I

    fill-array-data v7, :array_1e

    aput-object v7, v2, v5

    const/16 v5, 0x1f

    new-array v7, v8, [I

    fill-array-data v7, :array_1f

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x20

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_20

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_21

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_22

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_23

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_24

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_25

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_26

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_27

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_28

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_29

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_2a

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_2b

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_2c

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_2d

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_2e

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_2f

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_30

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_31

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_32

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_33

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_34

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_35

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_36

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_37

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_38

    aput-object v7, v2, v5

    const/16 v5, 0x19

    new-array v7, v8, [I

    fill-array-data v7, :array_39

    aput-object v7, v2, v5

    const/16 v5, 0x1a

    new-array v7, v8, [I

    fill-array-data v7, :array_3a

    aput-object v7, v2, v5

    const/16 v5, 0x1b

    new-array v7, v8, [I

    fill-array-data v7, :array_3b

    aput-object v7, v2, v5

    const/16 v5, 0x1c

    new-array v7, v8, [I

    fill-array-data v7, :array_3c

    aput-object v7, v2, v5

    const/16 v5, 0x1d

    new-array v7, v8, [I

    fill-array-data v7, :array_3d

    aput-object v7, v2, v5

    const/16 v5, 0x1e

    new-array v7, v8, [I

    fill-array-data v7, :array_3e

    aput-object v7, v2, v5

    const/16 v5, 0x1f

    new-array v7, v8, [I

    fill-array-data v7, :array_3f

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Dolby Mobile for Movies"

    const-string v2, "A preset designed for a surround sound movie experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MOVIE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v3, Ljava/util/HashMap;

    .end local v3           #allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 154
    .restart local v3       #allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x20

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_40

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_41

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_42

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_43

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_44

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_45

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_46

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_47

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_48

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_49

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_4a

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_4b

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_4c

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_4d

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_4e

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_4f

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_50

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_51

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_52

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_53

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_54

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_55

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_56

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_57

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_58

    aput-object v7, v2, v5

    const/16 v5, 0x19

    new-array v7, v8, [I

    fill-array-data v7, :array_59

    aput-object v7, v2, v5

    const/16 v5, 0x1a

    new-array v7, v8, [I

    fill-array-data v7, :array_5a

    aput-object v7, v2, v5

    const/16 v5, 0x1b

    new-array v7, v8, [I

    fill-array-data v7, :array_5b

    aput-object v7, v2, v5

    const/16 v5, 0x1c

    new-array v7, v8, [I

    fill-array-data v7, :array_5c

    aput-object v7, v2, v5

    const/16 v5, 0x1d

    new-array v7, v8, [I

    fill-array-data v7, :array_5d

    aput-object v7, v2, v5

    const/16 v5, 0x1e

    new-array v7, v8, [I

    fill-array-data v7, :array_5e

    aput-object v7, v2, v5

    const/16 v5, 0x1f

    new-array v7, v8, [I

    fill-array-data v7, :array_5f

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x20

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_60

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_61

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_62

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_63

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_64

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_65

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_66

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_67

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_68

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_69

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_6a

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_6b

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_6c

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_6d

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_6e

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_6f

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_70

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_71

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_72

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_73

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_74

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_75

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_76

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_77

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_78

    aput-object v7, v2, v5

    const/16 v5, 0x19

    new-array v7, v8, [I

    fill-array-data v7, :array_79

    aput-object v7, v2, v5

    const/16 v5, 0x1a

    new-array v7, v8, [I

    fill-array-data v7, :array_7a

    aput-object v7, v2, v5

    const/16 v5, 0x1b

    new-array v7, v8, [I

    fill-array-data v7, :array_7b

    aput-object v7, v2, v5

    const/16 v5, 0x1c

    new-array v7, v8, [I

    fill-array-data v7, :array_7c

    aput-object v7, v2, v5

    const/16 v5, 0x1d

    new-array v7, v8, [I

    fill-array-data v7, :array_7d

    aput-object v7, v2, v5

    const/16 v5, 0x1e

    new-array v7, v8, [I

    fill-array-data v7, :array_7e

    aput-object v7, v2, v5

    const/16 v5, 0x1f

    new-array v7, v8, [I

    fill-array-data v7, :array_7f

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Dolby Mobile for Music"

    const-string v2, "A preset designed for an immersive music listening experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 242
    return-object v6

    .line 61
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_15
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_16
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_17
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_18
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_1a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_1b
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1c
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1d
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1e
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1f
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 104
    :array_20
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_21
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_22
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_23
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_24
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_25
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_26
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_27
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_28
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    :array_29
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_2a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2b
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2c
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_2d
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2e
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    :array_2f
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_30
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_31
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_32
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
    .end array-data

    :array_33
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_34
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    :array_35
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    :array_36
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_37
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_38
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_39
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_3b
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3c
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3d
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3e
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    :array_3f
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    .line 154
    :array_40
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_41
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_42
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_43
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_44
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_45
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_46
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_47
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_48
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_49
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_4a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4b
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4c
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_4d
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4e
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    :array_4f
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_50
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_51
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_52
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_53
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_54
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_55
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_56
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_57
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_58
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_59
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5b
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5c
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5d
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5e
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5f
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 197
    :array_60
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_61
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_62
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_63
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_64
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_65
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_66
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_67
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_68
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    :array_69
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_6a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_6b
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_6c
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_6d
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_6e
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    :array_6f
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_70
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_71
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_72
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
    .end array-data

    :array_73
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_74
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    :array_75
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    :array_76
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_77
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_78
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_79
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_7a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7b
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_7c
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_7d
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7e
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    :array_7f
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static GetSpeakerCoefficients44100()[B
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x64

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x1
        0x4t
        0x0t
        0x10t
        0x0t
        0xc2t
        0xc2t
        0x23t
        0x1t
        0x38t
        0xfct
        0x56t
        0x3dt
        0xc9t
        0x5dt
        0x0t
        0x0t
        0x5at
        0xc0t
        0xc1t
        0xfft
        0x8ft
        0xfft
        0x89t
        0x7ct
        0xft
        0x10t
        0x0t
        0x0t
        0x55t
        0xc2t
        0xb4t
        0x1t
        0x23t
        0xfdt
        0xe1t
        0x1ft
        0x38t
        0x6at
        0x0t
        0x0t
        0xd4t
        0xadt
        0x23t
        0xf6t
        0xe9t
        0xf3t
        0x5bt
        0x2t
        0x1t
        0x35t
        0x0t
        0x0t
        0xc2t
        0xc2t
        0x23t
        0x1t
        0x38t
        0xfct
        0x56t
        0x3dt
        0xc9t
        0x5dt
        0x0t
        0x0t
        0x5at
        0xc0t
        0xc1t
        0xfft
        0x8ft
        0xfft
        0x89t
        0x7ct
        0xft
        0x10t
        0x0t
        0x0t
        0x55t
        0xc2t
        0xb4t
        0x1t
        0x23t
        0xfdt
        0xe1t
        0x1ft
        0x38t
        0x6at
        0x0t
        0x0t
        0xd4t
        0xadt
        0x23t
        0xf6t
        0xe9t
        0xf3t
        0x5bt
        0x2t
        0x1t
        0x35t
        0x0t
        0x0t
    .end array-data
.end method
