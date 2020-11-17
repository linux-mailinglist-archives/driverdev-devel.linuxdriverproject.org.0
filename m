Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 005322B5ABF
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Nov 2020 09:09:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5FBBB8705B;
	Tue, 17 Nov 2020 08:09:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7o4G+9i9sm1e; Tue, 17 Nov 2020 08:09:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA6CB8704C;
	Tue, 17 Nov 2020 08:09:14 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7B8AA1BF340
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 08:09:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 773BD811C1
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 08:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sAYQuUxeCdHe
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 08:09:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3856084E4E
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 08:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1605600534; x=1637136534;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Cizs8dNnpcP0JKrQbhWulGhITHuYp09ELwYiGjNOweE=;
 b=P2MSvS7/xBlDRHUtNORrVdDiNFzxe20NTdaAQcekOdaOrnUtG29vNeBi
 HBQxVQldT5YhVBR2AQMdnYl2n9VBn+Iyt/hhR+lStoFylB5eepbtEM3kw
 no5ZgsgQfNUzlfh2xCOIBNhxz0NsTNegAGDGoqm8CpVm7jwJBNh0F0LNQ
 dKQ8H3Bds+JQde4GLuIGfl+FgxSQlg9Khjr8vzUVdcP8K6FHU6HfbYZSA
 ujQl+ZHqWNPkqgffrKQkJt84Lzhx3Wq2YcPqFcCkY1r8ETQqBynmUP/bU
 oaiYrJO+dg81p60b65h4i4xGkU3F2t78ukGolCmejmS3ikDEeWc1tO6WJ A==;
IronPort-SDR: 3RqN+6to+C5MzK1Q5ZaSuuIs37VNersTAKibdXu3hkT+LD4EUJGsMiEIexW3UDFCndzhtksjDs
 96rGPKz/6+LNwh8ci+p3iZ1HVmKJRjOTFn8FSwPFLbXCieClyah9lQ8DWiK9y+iWbxEXZ7e1ew
 WMxuzlHXWoZsUMGiZABtgt3w9iSFRv++XUN9wn/wbXkkLfi45Tmh9p0kSFZlDgnYsRky4/Ih8o
 dWa+bwigbMmx7eKYBpwZxu/NeOrIBZahm5OB4EhruWPhecly30/5pr035S85qvpqvLLmeP9GHn
 q40=
X-IronPort-AV: E=Sophos;i="5.77,484,1596524400"; d="scan'208";a="96587520"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Nov 2020 01:08:52 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 17 Nov 2020 01:08:52 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3
 via Frontend Transport; Tue, 17 Nov 2020 01:08:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K2vRPdWa0qPteDbT0Zel+Ob5BB5GcNXJSyl34WCYfsV/zMiC+V33sIFAygZuFxqfczzux9RSOakdiBbSAPG74FPCAl1bEIc9JO2szyDWLaHqY7iTSnv5jLcu8VIWfpNrlCYlyd4xG7dxV3jfKp8tBN18WQw6azeFmNZDRwhgsGgvD9exikJ9tZD/Qr0zk3KJU/dHnqGRRX7Q3KWMVW3AL2/mB8nO36xRW37dZgwqyPEPZ9SQ1k9Wu2SGYes4n8xNlHO5d2oXlypCLCbZxUNbN30QfuepYhHEisDtaVKgcVf6NMWNA8aUH1OZGY2DIz4FdRYaGjfbg+26qix3lVz/PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cizs8dNnpcP0JKrQbhWulGhITHuYp09ELwYiGjNOweE=;
 b=gOEQ+erCY52Ql/jFwJAdBS5VbSmmoBBP8nyEemIDw0wA8w3fMy4CJNa65o/7kysYLbzNZ40wTQzymGsHb2HQtIZQCFS1SamKXogBfcNErFSVACNnMtBfFrOprYWI3ZBgC3gSuANvgf8bfA7v/Xdk2xxdFwMT3bYVikVqGAcOk8v8BZyF2UmAPWU+EWJEmuTQAc+gTJFfhRrDVSrTBL73nM2HC/8iFzUXM9gM7SWeL5xbHh6gK9pq35ZFMv8ukGn81l4RGbBBCuw23TwfdNiX7iP005tVEeztF+fISfaTRl07/k2YBmQurJjvIk7jpE9FATbGYJau/Cz7ByrUkOayXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cizs8dNnpcP0JKrQbhWulGhITHuYp09ELwYiGjNOweE=;
 b=TrJ8JQl12dGQDe7NsevO6AT9LJQQ7U6JpFu+D7/vW32AkTs6oQeP4t91PsjVbT1DiQkP9GwV0o/GLazLOoJZQ+VNlN7h54zKgCc8Bmho0mOxJVPtSRRoOaLV14mJ/MZjS7tWvbIPXmA2b8c/KQTCNySfqkc5z9ehekdu6ld+h64=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM6PR11MB3868.namprd11.prod.outlook.com (2603:10b6:5:19f::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3564.28; Tue, 17 Nov 2020 08:08:51 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::f983:dc6d:ad81:9e18]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::f983:dc6d:ad81:9e18%7]) with mapi id 15.20.3564.028; Tue, 17 Nov 2020
 08:08:50 +0000
From: <Christian.Gromm@microchip.com>
To: <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2] drivers: most: add ALSA sound driver
Thread-Topic: [PATCH v2] drivers: most: add ALSA sound driver
Thread-Index: AQHWtFo41Os4vkblKke0fdQNlR9SoqnBE80AgAr1QIA=
Date: Tue, 17 Nov 2020 08:08:50 +0000
Message-ID: <564d35a4fc32866f91f5bf3fb1bb16a5c67b3d9e.camel@microchip.com>
References: <1604680254-17185-1-git-send-email-christian.gromm@microchip.com>
 <20201110084826.GE29398@kadam>
In-Reply-To: <20201110084826.GE29398@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.30.5-1.1 
authentication-results: oracle.com; dkim=none (message not signed)
 header.d=none;oracle.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [109.250.134.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 66516092-9b4f-42bd-b413-08d88ad004b4
x-ms-traffictypediagnostic: DM6PR11MB3868:
x-microsoft-antispam-prvs: <DM6PR11MB3868F9F5E72A5C015B78793CF8E20@DM6PR11MB3868.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZiMZ8MuAKKhF8PWBtV4YrJp3ieTAR7aTOOrsWU3EuzF5ICZdYR8kFDMpRek1+xKbsH4cB7URJnqu/VKKvlm1qNpdQYPvzyn2BsFg9n1Mk/Ex1sPdrhG3anw1YXjQS5mEav0YjcKph29fdxv342atP88Qph4lxuQHZd/GbyBD1AYSOtGq6WAZwmWVvnu4rNUW+HsP/3QZc4VQaLb9NhMJu2Z+nTxFaPRpyBiuFnsvmFcCW+sDApgAEIer4SsmndmVKUhT5lfibQPOLsBcwS+N6t3+TLCrTO4iqZ6CXxhPG+Iv/eW4zYHxj3zCjJK86m0P
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(346002)(136003)(39860400002)(396003)(66556008)(66476007)(64756008)(66946007)(316002)(478600001)(66446008)(71200400001)(91956017)(8676002)(4001150100001)(4326008)(6916009)(8936002)(26005)(186003)(2616005)(6512007)(76116006)(6506007)(6486002)(36756003)(86362001)(54906003)(5660300002)(2906002)(83380400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Ejksa0aQvmLqSFO5TdxPR9qH/2b3oPAby+NWskyhka3FdU0dwmjFt0rEzRGB0gx29dk93DP0PWgrFdFDfuKzY0EgFu1tH3mPa5YztC7P+JoEFfr97bhA7Be6PH6QTTM2Ysjkp908eDyYwJ8XsoTBd9D8lkQXZwm3VDTIEAkiZqP9qA4S8SzqOKw1lV3vKnbtVU+waz7fd3cgxmhabzk+mYTz7XobBKoD5c32u/ufwGMn3XPCCZSGfwv71rmgO6l6QQOEwm8jyyY53od1VaxG16X/1PspIqYCsCDLcwrZkWicqYkrjr8KqkYbnYXzY8rMHtXe35/5gRbspkbIdamp0h6wkbsAqJiWBGG2x8/CqsF2mf2cigE96U0aY46IOt3hlbIohBMuq2plzsdTcyTwcROHg2QTzHNobYiSYiBFrHHSxXLaxWdFiA8rAdzRwq63HyEJTkfFG/Pna5raEv2JIHsp2/Hn71cJ/9IUCzQJJUxZqfXQUWa1qq72wU8lX55IghADzqRYar/XHhQ/I4NxLsd2usqMQuFCo9c1uX7M2/Wrkb8OcO7ScEr0/dOZu1uu1tXfLNADnXGfD1sX8pU4nIWAA08wm1Q2IIqvyO0WN6iOixYL9EoZ9DVoIS8YN3RCpiHcGKY2q0jLrC2oRl0YLcoENmTmaKddo8kCtT29ML1yG/EjaxMhuzgSs8iq5aIR5GXc4GHcFXnOdOS1whQDpX30EeLzf+Hf6WFGGUB5tQUnlZwOEZQ9xt9eSg8QX2KatEkGBYZqcUXbOxf/ptPzvrQjD2QdRcjVGRP15Q+MbnYM8LijVH1ys2LW0/k86piGAqcSoZJ3fVQ4CUqS4Tnso7uAO8WgwUYDRmsB7bJv8zQEQW3fyOAlH4JPKxT38TLVkjI7qdgdl1CSp0cH7EkLeA==
x-ms-exchange-transport-forked: True
Content-ID: <B0910BA52A52704F97833B5DF420EE8B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66516092-9b4f-42bd-b413-08d88ad004b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2020 08:08:50.6419 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UzEa4FzPFrLO1FRn3cYisD1Tlz+qbYXLAleJ2b4k/XesJt7E1/Y29caDzReZH+6JaX47yZnGkPoNUSxUnSbPFzzxeEWjesGVodX+rt9B8jQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3868
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: gregkh@linuxfoundation.org, driverdev-devel@linuxdriverproject.org,
 linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-11-10 at 11:48 +0300, Dan Carpenter wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Fri, Nov 06, 2020 at 05:30:54PM +0100, Christian Gromm wrote:
> > +static struct list_head adpt_list;
> > +
> > +#define MOST_PCM_INFO (SNDRV_PCM_INFO_MMAP | \
> > +                    SNDRV_PCM_INFO_MMAP_VALID | \
> > +                    SNDRV_PCM_INFO_BATCH | \
> > +                    SNDRV_PCM_INFO_INTERLEAVED | \
> > +                    SNDRV_PCM_INFO_BLOCK_TRANSFER)
> > +
> > +static void swap_copy16(u16 *dest, const u16 *source, unsigned int bytes)
> > +{
> > +     unsigned int i = 0;
> > +
> > +     while (i < (bytes / 2)) {
> > +             dest[i] = swab16(source[i]);
> > +             i++;
> > +     }
> > +}
> > +
> > +static void swap_copy24(u8 *dest, const u8 *source, unsigned int bytes)
> > +{
> > +     unsigned int i = 0;
> > +
> > +     while (i < bytes - 2) {
> 
> Can bytes ever be zero?  If so then this will corrupt memory and crash.
> 
> Generally "int i;" is less risky than "unsigned int i;".  Of course, I
> recently almost introduced a situation where we were copying up to
> ULONG_MAX bytes so there are times when iterators should be size_t so
> that does happen.  It could be buggy either way is what I'm saying but
> generally "unsigned int i;" is more often buggy.
> 
> > +             dest[i] = source[i + 2];
> > +             dest[i + 1] = source[i + 1];
> > +             dest[i + 2] = source[i];
> > +             i += 3;
> > +     }
> > +}
> > +
> > +static void swap_copy32(u32 *dest, const u32 *source, unsigned int bytes)
> > +{
> > +     unsigned int i = 0;
> > +
> > +     while (i < bytes / 4) {
> > +             dest[i] = swab32(source[i]);
> > +             i++;
> > +     }
> > +}
> > +
> > +static void alsa_to_most_memcpy(void *alsa, void *most, unsigned int bytes)
> > +{
> > +     memcpy(most, alsa, bytes);
> > +}
> > +
> > +static void alsa_to_most_copy16(void *alsa, void *most, unsigned int bytes)
> > +{
> > +     swap_copy16(most, alsa, bytes);
> > +}
> > +
> > +static void alsa_to_most_copy24(void *alsa, void *most, unsigned int bytes)
> > +{
> > +     swap_copy24(most, alsa, bytes);
> > +}
> > +
> > +static void alsa_to_most_copy32(void *alsa, void *most, unsigned int bytes)
> > +{
> > +     swap_copy32(most, alsa, bytes);
> > +}
> > +
> > +static void most_to_alsa_memcpy(void *alsa, void *most, unsigned int bytes)
> > +{
> > +     memcpy(alsa, most, bytes);
> > +}
> > +
> > +static void most_to_alsa_copy16(void *alsa, void *most, unsigned int bytes)
> > +{
> > +     swap_copy16(alsa, most, bytes);
> > +}
> > +
> > +static void most_to_alsa_copy24(void *alsa, void *most, unsigned int bytes)
> > +{
> > +     swap_copy24(alsa, most, bytes);
> > +}
> > +
> > +static void most_to_alsa_copy32(void *alsa, void *most, unsigned int bytes)
> > +{
> > +     swap_copy32(alsa, most, bytes);
> > +}
> > +
> > +/**
> > + * get_channel - get pointer to channel
> > + * @iface: interface structure
> > + * @channel_id: channel ID
> > + *
> > + * This traverses the channel list and returns the channel matching the
> > + * ID and interface.
> > + *
> > + * Returns pointer to channel on success or NULL otherwise.
> > + */
> > +static struct channel *get_channel(struct most_interface *iface,
> > +                                int channel_id)
> > +{
> > +     struct sound_adapter *adpt = iface->priv;
> > +     struct channel *channel, *tmp;
> > +
> > +     list_for_each_entry_safe(channel, tmp, &adpt->dev_list, list) {
> > +             if ((channel->iface == iface) && (channel->id == channel_id))
> > +                     return channel;
> 
> No need to use the _safe() version of this loop macro.  You're not
> freeing anything.  My concern is that sometimes people think the _safe()
> has something to do with locking and it does not.
> 
> > +     }
> > +     return NULL;
> > +}
> > +
> 
> [ Snip ]
> 
> > +/**
> > + * audio_probe_channel - probe function of the driver module
> > + * @iface: pointer to interface instance
> > + * @channel_id: channel index/ID
> > + * @cfg: pointer to actual channel configuration
> > + * @arg_list: string that provides the name of the device to be created in /dev
> > + *         plus the desired audio resolution
> > + *
> > + * Creates sound card, pcm device, sets pcm ops and registers sound card.
> > + *
> > + * Returns 0 on success or error code otherwise.
> > + */
> > +static int audio_probe_channel(struct most_interface *iface, int channel_id,
> > +                            struct most_channel_config *cfg,
> > +                            char *device_name, char *arg_list)
> > +{
> > +     struct channel *channel;
> > +     struct sound_adapter *adpt;
> > +     struct snd_pcm *pcm;
> > +     int playback_count = 0;
> > +     int capture_count = 0;
> > +     int ret;
> > +     int direction;
> > +     u16 ch_num;
> > +     char *sample_res;
> > +     char arg_list_cpy[STRING_SIZE];
> > +
> > +     if (cfg->data_type != MOST_CH_SYNC) {
> > +             pr_err("Incompatible channel type\n");
> > +             return -EINVAL;
> > +     }
> > +     strlcpy(arg_list_cpy, arg_list, STRING_SIZE);
> > +     ret = split_arg_list(arg_list_cpy, &ch_num, &sample_res);
> > +     if (ret < 0)
> > +             return ret;
> > +
> > +     list_for_each_entry(adpt, &adpt_list, list) {
> > +             if (adpt->iface != iface)
> > +                     continue;
> > +             if (adpt->registered)
> > +                     return -ENOSPC;
> > +             adpt->pcm_dev_idx++;
> > +             goto skip_adpt_alloc;
> 
> It's weird how if the "channel = " allocation fails, then we free this
> "adpt" which we didn't allocate.

We actually did allocate it in a previous call to this function.
Otherwise we would not jump to the skip_adpt_alloc label. And if
we don't jump there, we are allocating it right away.

thanks,
Chris

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
