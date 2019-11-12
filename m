Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4734BF8EA2
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 12:32:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 60F2386420;
	Tue, 12 Nov 2019 11:32:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VSnmob1AOXBk; Tue, 12 Nov 2019 11:32:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E43458614D;
	Tue, 12 Nov 2019 11:32:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A81F1BF5E0
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 11:32:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 574BD20356
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 11:32:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qyfj9DfTf+OX for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 11:32:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM05-DM3-obe.outbound.protection.outlook.com
 (mail-eopbgr730051.outbound.protection.outlook.com [40.107.73.51])
 by silver.osuosl.org (Postfix) with ESMTPS id 2EE1920134
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 11:32:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mmgzp1Quri0nawSZrWqp08KpEdnXgraR7uOOV24Y2VvEEtI8lCNIkGdH9nU9NlzgcazzF+3JL4/ivcb2RQL8HxfmEKygn4/LNa5yIJ1Hlsi4GMknq4ejgsPzZSFA0jRGMzM+eS32OtsofMUScS9eYIoutaeY+obgzBMqXJ2PpAqV9fLFbArVEoOEONBXZshVbpNwZ8vzUmqRsC9yXBLYC44TcsbJ2Pkdw8dkP1bySdrOlOMADABhs/2LoYKb3dSpCl6yQTd3Hm5BDT6dWprY5QEGEb50wS6P5hDFGnA98d2EC94yalDUV6jJ27GobETYdkbnt7b25hYb5D4+NMfltQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1DHiGFm7/eoMTe5ZI+bYyT2KC8RTEraKULn32lKtNtE=;
 b=ZsviFpSkGBRUzou2DzEadTnB/u20ZTIG/ZMAfMoWQWQHF9tLso+9kaeVbjuZKbRTKdq3krlexNBwa5L/uCvsfFzRgVkMoZJ4fCTn3nNcqe/SB3LkuwhR3XhY/YzSTpZHt0xB02+WRCXsIdf0X4Lj6CFIKL9Ert1d4UgLkjmv6hNHa+JNHoWp3uBtNDiSE2mnY+oChLzOcWw1vuDEtBkvrj9XtSQTIcmOjLnqyHQVJrYgJBOqk4ECCxd8AdyWhB49gXLPxOJlB+moG2u8ygegwoInE8o3LRQoiRcXRvVpMO6KzKOm1rrhZjAS1JlXG6nxccxKFJj0Wz/r3LyzzXPXNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1DHiGFm7/eoMTe5ZI+bYyT2KC8RTEraKULn32lKtNtE=;
 b=OCF+vt9mf/yVlZB3qaKxM6uHmN1NXyaFN3LnNNjDyMChWZY5aFELcDF6RLSNqcVpQhatynN6nLMabOt/WUyQRgH0c/Qe+qHS4VTueA2/qvcvTb4H0gBtUbFvogNQtA6tzmQYrdo7Vwg8AHevM698iM4hZNJCwJsPrF1QIy6xrq0=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4032.namprd11.prod.outlook.com (20.179.149.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.24; Tue, 12 Nov 2019 11:32:07 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::90bc:abcd:689a:944]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::90bc:abcd:689a:944%7]) with mapi id 15.20.2430.027; Tue, 12 Nov 2019
 11:32:07 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH] staging: wfx: add gcc extension __force cast
Thread-Topic: [PATCH] staging: wfx: add gcc extension __force cast
Thread-Index: AQHVlo2vxeA9owBuRU69L3+4vyY0cqeCkGWAgANwwICAAG8CAIAA/F0A
Date: Tue, 12 Nov 2019 11:32:07 +0000
Message-ID: <2852964.2jKPfdd9jE@pc-42>
References: <20191108233837.33378-1-jbi.octave@gmail.com>
 <alpine.LFD.2.21.1911111347380.226731@ninjahub.org>
 <20191111202852.GX26530@ZenIV.linux.org.uk>
In-Reply-To: <20191111202852.GX26530@ZenIV.linux.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9aade5af-3a7f-4c77-267c-08d76763f359
x-ms-traffictypediagnostic: MN2PR11MB4032:
x-microsoft-antispam-prvs: <MN2PR11MB4032478A87C7BB7861A6870193770@MN2PR11MB4032.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(376002)(366004)(396003)(346002)(136003)(39850400004)(199004)(189003)(51914003)(43544003)(99286004)(54906003)(478600001)(66446008)(64756008)(66556008)(66476007)(66574012)(3846002)(6116002)(76176011)(6436002)(14454004)(6506007)(91956017)(76116006)(66946007)(305945005)(66066001)(229853002)(7736002)(5660300002)(25786009)(102836004)(6486002)(86362001)(30864003)(316002)(71200400001)(71190400001)(8676002)(186003)(446003)(11346002)(2906002)(81166006)(81156014)(9686003)(14444005)(6246003)(8936002)(33716001)(476003)(486006)(4326008)(256004)(26005)(6916009)(6512007)(39026011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4032;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DtStKbHPBtxKPisxpDAVPyesxWLaEZ2nz0Go+KA8X9hKeXUfZ55zixPnJDwNVenGXS1+JWVzRtALgN+heSZHo00CHfJVHhdXCLPr1bADOOFZjTxuy67QAoMxU5x4ThRrsGBhUUaFUiIJ7bkp+fUdsbm3gFZQM3a4+kdRngQI2EaqYTkq/h4FW6cHTGpc280YexoppnvRf5JgUqM0HY/uRs+6Kb9OrCnIgy7BeSoQhCRzfTkNczqtKOFBF7vYaA0tqd3fWkjpNErEQf2brSATRjfeCGrqSjVeA6pwjF2cMFRB2m7p09iBBN1UzEIRKNS5NMo7cPEautK450v7N5R8kFfp8xM2EeAlSffvh03ppeUQNha1gqMoPKgQfKut7zBd40/FGZU+JxoG/DJhTgEUsXiea3RuvjYzqdmfexjW0zImXKD3NkJYcy8fTP+p/q8G
x-ms-exchange-transport-forked: True
Content-ID: <BF533971F86CF44783F4398E169335B1@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9aade5af-3a7f-4c77-267c-08d76763f359
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 11:32:07.6674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R87ZDVyq8YEyqj2TrM1ds7AQFLEnHOJyGSiloVgNWlu8+pCj5JoVAl8vlK1kty8jexSL1c7/x2fwjzFeDd9q7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4032
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Jules Irenge <jbi.octave@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Boqun.Feng@microsoft.com" <Boqun.Feng@microsoft.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Al,

Thank you for your extensive review.

On Monday 11 November 2019 21:28:52 CET Al Viro wrote:
> On Mon, Nov 11, 2019 at 01:51:33PM +0000, Jules Irenge wrote:
> >
> > > NAK.  force-cast (and it's not a gcc extension, BTW - it's sparse) is=
 basically
> > > "I know better; the code is right, so STFU already".  *IF* counters.c=
ount_...
> > > is really little-endian 32bit, then why isn't it declared that way?  =
And if
> > > it's host-endian, you've just papered over a real bug here.
> > >
> > > As a general rule "fix" doesn't mean "tell it to shut up"...
> > >
> >
> > Thanks for the comments, I have updated  but I have a mixed mind on the
> > __le32. I have to read more about it.
> >
> > I would appreciate if you can comment again on the update.
> =

> From the look at the driver, it seems that all these counters are a part =
of
> structure that is read from the hardware and only used as little-endian.
> So just declare all fields in struct hif_mib_extended_count_table as
> __le32; easy enough.  Looking a bit further, the same goes for
> struct hif_mib_bcn_filter_table ->num_of_info_elmts
> struct hif_mib_keep_alive_period ->keep_alive_period (__le16)
> struct hif_mib_template_frame ->frame_length (__le16)
> struct hif_mib_set_association_mode ->basic_rate_set (__le32)
> struct hif_req_update_ie ->num_i_es (__le16)
> struct hif_req_write_mib ->mib_id, ->length (__le16 both)
> struct hif_req_read_mib ->mib_id (__le16)
> struct hif_req_configuration ->length (__le16)

Indeed, structs declared in hif_api* are shared with the hardware and
should use __le16/__le32. However, as you noticed below, these structs
are sometime used in other parts of the code that are not related to
the hardware. =


I have in my local queue a set of patches that improve the situation.
Objective is to limit usage of hif structs to hif_tx.c, hif_tx_mib.c
and hif_rx.c (which are correct places to handle hardware
communication). I hope to be able to submit these patches in 2 weeks.


[...]
> and that's where the real bugs start to show up; leaving the misbegotten
> forest of macros in misbegotten tracing shite aside, we have this:
> =

> static const struct ieee80211_supported_band wfx_band_2ghz =3D {
>         .channels =3D wfx_2ghz_chantable,
>         .n_channels =3D ARRAY_SIZE(wfx_2ghz_chantable),
>         .bitrates =3D wfx_rates,
>         .n_bitrates =3D ARRAY_SIZE(wfx_rates),
>         .ht_cap =3D {
>                 // Receive caps
>                 .cap =3D IEEE80211_HT_CAP_GRN_FLD | IEEE80211_HT_CAP_SGI_=
20 |
>                        IEEE80211_HT_CAP_MAX_AMSDU | (1 << IEEE80211_HT_CA=
P_RX_STBC_SHIFT),
>                 .ht_supported =3D 1,
>                 .ampdu_factor =3D IEEE80211_HT_MAX_AMPDU_16K,
>                 .ampdu_density =3D IEEE80211_HT_MPDU_DENSITY_NONE,
>                 .mcs =3D {
>                         .rx_mask =3D { 0xFF }, // MCS0 to MCS7
>                         .rx_highest =3D 65,
> drivers/staging/wfx/main.c:108:39: refering to this initializer.
> Sparse say that it expects rx_highest to be __le16.  And that's
> not a driver-specific structure; it's generic ieee80211 one.  Which
> says
> struct ieee80211_mcs_info {
>         u8 rx_mask[IEEE80211_HT_MCS_MASK_LEN];
>         __le16 rx_highest;
>         u8 tx_params;
>         u8 reserved[3];
> } __packed;
> and grepping for rx_highest through the tree shows that everything else
> is treating it as little-endian 16bit.
> =

> Almost certainly a bug on big-endian hosts; should be .rx_highest =3D cpu=
_to_le16(65),
> instead.

Agree.


> Looking for more low-hanging fruits, we have
> static int indirect_read32_locked(struct wfx_dev *wdev, int reg, u32 addr=
, u32 *val)
> {
>         int ret;
>         __le32 *tmp =3D kmalloc(sizeof(u32), GFP_KERNEL);
> =

>         if (!tmp)
>                 return -ENOMEM;
>         wdev->hwbus_ops->lock(wdev->hwbus_priv);
>         ret =3D indirect_read(wdev, reg, addr, tmp, sizeof(u32));
>         *val =3D cpu_to_le32(*tmp);
>         _trace_io_ind_read32(reg, addr, *val);
>         wdev->hwbus_ops->unlock(wdev->hwbus_priv);
>         kfree(tmp);
>         return ret;
> }
> with warnings about val =3D cpu_to_le32(*tmp); fair enough, since *val is
> host-endian (u32) and *tmp - little-endian.  Trivial misannotation -
> it should've been le32_to_cpu(), not cpu_to_le32().  Same mapping on
> all CPUs we are ever likely to support, so it's just a misannotation,
> not a bug per se.

Agree.


> drivers/staging/wfx/hif_tx_mib.h:34:38: warning: incorrect type in initia=
lizer (different base types)
> drivers/staging/wfx/hif_tx_mib.h:34:38:    expected unsigned char [userty=
pe] wakeup_period_max
> drivers/staging/wfx/hif_tx_mib.h:34:38:    got restricted __le16 [usertyp=
e]
> =

> is about
> static inline int hif_set_beacon_wakeup_period(struct wfx_vif *wvif,
>                                                unsigned int dtim_interval,
>                                                unsigned int listen_interv=
al)
> {
>         struct hif_mib_beacon_wake_up_period val =3D {
>                 .wakeup_period_min =3D dtim_interval,
>                 .receive_dtim =3D 0,
>                 .wakeup_period_max =3D cpu_to_le16(listen_interval),
>         };
> and struct hif_mib_beacon_wake_up_period has wakeup_period_max declared
> as uint8_t.  We are shoving a le16 value into it.  Almost certain bug -
> that will result in the listen_interval % 256 on litte-endian host and
> listen_interval / 256 on big-endian one.  Looking at the callers to
> see what's actually passed as listen_interval shows only
>         hif_set_beacon_wakeup_period(wvif, wvif->dtim_period, wvif->dtim_=
period);
> and dtim_period in *wvif (struct wfx_vif) can be assigned 0, 1 or
> values coming from struct ieee80211_tim_ie ->dtim_period or
> struct ieee80211_bss_conf ->dtim_period, 8bit in either structure.
> =

> In other words, the value stored in val.wakeup_period_max will be
> always zero on big-endian hosts.  Definitely bogus, should just
> store that (8bit) value as-is; cpu_to_le16() is wrong here.

Absolutely agree.


> Next piece of fun:
> static inline int hif_beacon_filter_control(struct wfx_vif *wvif,
>                                             int enable, int beacon_count)
> {
>         struct hif_mib_bcn_filter_enable arg =3D {
>                 .enable =3D cpu_to_le32(enable),
>                 .bcn_count =3D cpu_to_le32(beacon_count),
>         };
>         return hif_write_mib(wvif->wdev, wvif->id,
>                              HIF_MIB_ID_BEACON_FILTER_ENABLE, &arg, sizeo=
f(arg));
> }
> Sounds like ->enable and ->bcn_count should both be __le32, which makes
> sense since the structs passed to hardware appear to be fixed-endian on
> that thing.  However, annotating them as such adds warnigns:
> drivers/staging/wfx/sta.c:246:35: warning: incorrect type in assignment (=
different base types)
> drivers/staging/wfx/sta.c:246:35:    expected restricted __le32 [assigned=
] [usertype] bcn_count
> drivers/staging/wfx/sta.c:246:35:    got int
> drivers/staging/wfx/sta.c:249:32: warning: incorrect type in assignment (=
different base types)
> drivers/staging/wfx/sta.c:249:32:    expected restricted __le32 [assigned=
] [usertype] enable
> drivers/staging/wfx/sta.c:249:32:    got int
> drivers/staging/wfx/sta.c:253:32: warning: incorrect type in assignment (=
different base types)
> drivers/staging/wfx/sta.c:253:32:    expected restricted __le32 [assigned=
] [usertype] enable
> drivers/staging/wfx/sta.c:253:32:    got int
> drivers/staging/wfx/sta.c:262:62: warning: incorrect type in argument 2 (=
different base types)
> drivers/staging/wfx/sta.c:262:62:    expected int enable
> drivers/staging/wfx/sta.c:262:62:    got restricted __le32 [assigned] [us=
ertype] enable
> drivers/staging/wfx/sta.c:262:78: warning: incorrect type in argument 3 (=
different base types)
> drivers/staging/wfx/sta.c:262:78:    expected int beacon_count
> drivers/staging/wfx/sta.c:262:78:    got restricted __le32 [assigned] [us=
ertype] bcn_count
> =

> All in the same function (wfx_update_filtering()) and we really do store
> host-endian values in those (first 3 places).  In the last one we pass
> them to hif_beacon_filter_control(), which does expect host-endian.
> And that's the only thing we do to the instance of hif_mib_bcn_filter_ena=
ble
> in there...
> =

> Possible solutions:
>         1) store them little-endian there, pass to hif_beacon_filter_cont=
rol()
> already l-e, get rid of cpu_to_le32() in the latter.
>         2) store them little-endian, pass the entire pointer to struct
> instead of forming it again in hif_beacon_filter_control()
>         3) don't pretend that the objects in hif_beacon_filter_control()
> and in wfx_update_filtering() are of the same type (different layouts on
> big-endian) and replace the one in the caller with two local variables.
> My preference would be (3), as in
[...]
> but that's a matter of taste.

Yes, this is one of the difficult parts. I work on it (I opted for
solution 3).



> Next is bx.c warning about __le32; that's about num_tx_count being fed to=
 cpu_to_le32().
> grepping for that thing results in
> drivers/staging/wfx/bh.c:106:                   release_count =3D le32_to=
_cpu(((struct hif_cnf_multi_transmit *)hif->body)->num_tx_confs);
> drivers/staging/wfx/hif_api_cmd.h:316:  uint32_t   num_tx_confs;
> drivers/staging/wfx/hif_rx.c:78:        int count =3D body->num_tx_confs;
> which is troubling - the first line (in rx_helper()) expects to find
> a little-endian value in that field, while the last (in hif_multi_tx_conf=
irm())
> - a host-endian, with nothing in sight that might account for conversion
> from one to another.
> =

> Let's look at the call chains: hif_multi_tx_confirm() is called only as
> hif_handlers[...]->handler(), which happens in in wfx_handle_rx().
> The call is
>                                 hif_handlers[i].handler(wdev, hif, hif->b=
ody);
> and hif has come from
>         struct hif_msg *hif =3D (struct hif_msg *) skb->data;
> wfx_handle_rx() is called by the same rx_helper()...  skb is created by
> rx_helper() and apparently filled by the call
>         if (wfx_data_read(wdev, skb->data, alloc_len))
>                 goto err;
> right next to the allocation... and prior to the
>                    release_count =3D le32_to_cpu(((struct hif_cnf_multi_t=
ransmit *)hif->body)->num_tx_confs);
> where we expect little-endian, with nothing to modify the skb contents
> between that and the call of wfx_handle_rx().  hif in rx_helper() points
> to the same place - skb->data.  OK, we almost certainly have a bug here.
>
> That thing allocates a packet and fills it with incoming data.  Then
> it parses the damn thing, apparently treating the same field of the
> incoming as little-endian in one place and host-endian in another.
> In principle it's possible that the rest of the packet determines
> which one it is, but by the look of that code both places are
> hit if and only if hif->id is equal to HIF_CNF_ID_MULTI_TRANSMIT.
> It *can't* be correct on big-endian.  Not even theoretically.
> =

> And since it's over-the-wire data, I would expect it to be fixed-endian.
> That needs to be confirmed with the driver's authors and/or direct
> experiment on big-endian host, but I strongly suspect that the right
> fix is to have
>         int count =3D le32_to_cpu(body->num_tx_confs);
> in hif_multi_tx_confirm() (and num_tx_confs annotated as __le32).

Indeed, num_tx_confs is always a le32 value.

 =

> HOWEVER, that opens another nasty can of worms.  We have
>         struct hif_cnf_tx *buf_loc =3D (struct hif_cnf_tx *) &body->tx_co=
nf_payload;
> ...
>         for (i =3D 0; i < count; ++i) {
>                 wfx_tx_confirm_cb(wvif, buf_loc);
>                 buf_loc++;
>         }
> with count derived from the packet and body pointing into the packet.  An=
d no
> visible checks that would make sure the loop won't run out of the data we=
'd
> actually got.
> =

> The check in rx_helper() verifies that hif->len matches the amount we'd
> received; the check for ->num_tx_confs in there doesn't look like what
> we'd needed (that would be offset of body.tx_conf_payload in packet +
> num_tx_confs * sizeof(struct hif_cnf_multi_transmit) compared to
> actual size).
> =

> So it smells like a remote buffer overrun, little-endian or not.
> And at that point I would start looking for driver original authors with
> some rather pointed questions about the validation of data and lack
> thereof.

There are not so much checks done on data retrieved from the hardware.
I think we can find other similar issues in the driver.

In this particular case, indeed, a little check on length of received
data could be a good idea.


> BTW, if incoming packets are fixed-endian, I would expect more bugs on
> big-endian hosts - wfx_tx_confirm_cb() does things like
>                 tx_info->status.tx_time =3D
>                 arg->media_delay - arg->tx_queue_delay;
> with media_delay and tx_queue_delay both being 32bit fields in the
> incoming packet.  So another question to the authors (or documentation,
> or direct experiments) is what endianness do various fields in the incomi=
ng
> data have.  We can try and guess, but...

Fortunately, answer is simple enough: everything from hardware is
little endian :).

Jules, do you want to take care of fixing theses issues (except the one
about wfx_update_filtering())?


-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
