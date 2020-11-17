Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D96F82B5C89
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Nov 2020 11:04:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1181870EA;
	Tue, 17 Nov 2020 10:04:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pRczuFT72-LS; Tue, 17 Nov 2020 10:04:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9174F870CD;
	Tue, 17 Nov 2020 10:04:11 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2A2C11BF340
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 10:04:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 262C7870D5
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 10:04:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id inz77C7il9+X
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 10:04:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C75AB870CD
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 10:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1605607445; x=1637143445;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=h88cX+UwMLi2xGHR1XCpvuUzfazH0WRt8PXmqLbo794=;
 b=SZudhg39qXywMNdkVcfOrP8HbLfLWQ9p7tLXEUhBApdMEsPtm1vx6EWl
 OaAnwTES/ODwZMJOu5lyyQa57yT9OzPCZ8q6ZtVhq6jyOUxc43uSwRsh2
 vIdDjPdweo4QTYnf5OHyKcWncL+WobfnNPNoZPx3NYza6qFLLSoljfE9B
 PnmIBvhGNslR1EHwfNNhizTPC+yDZgVwbgU3CKnB2vWtkXzunmTAl64SM
 b1mB72EG8NusHwpGrWjfcrCAl80euT8C23gGN/h7OJbTQ+N0ZeW3XhO9T
 cwODC8sU2laHC0JEV3NfZw124K56sKyMiJXlUUxPvKv7ZcrF/rfMCqV7J w==;
IronPort-SDR: y7VPbKPe8nzZK1aJXGjqSXw4CqOQRPa8moitZrzsZXfUDCTsOQgqfgFBx3fSBPcvlqlTjIZjnV
 bAPAfmdCE37NfcE4I71xdzmCj32CXQZmwZdSpsyaR61qmVhbKqKLrjnuKJHGQSv50M7EB9MmWs
 6NkuzA0zU0CnOBsvsCejuGW7TIALbTWgugBkGKH9/YkuIHizS3tVTPTdJC7fpt/jHWXfc4Ub2A
 kKUEYCjqiOajEWA+kFhy6SSCPVyw1afoaamGN48n4efkmlcTb9Sk7PQ2rAVNaciuVcmBm0x690
 d4U=
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="103842896"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Nov 2020 03:04:05 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 17 Nov 2020 03:04:04 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3 via Frontend
 Transport; Tue, 17 Nov 2020 03:04:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c0gHdVSq+7/Cj2fFYXfsHBwmvGphVlfjZCcaMF6AYr2WGEHV3Ds49sL2+aU7DsCUica2eX/C6UoEuNGHOg7q4T+z/zM4sgwS2gihQPtvi2NQ1wN2Mz5zSzhw2pNxKI258Gw0OKRUPGQSnM6Y+u/M6Cno5FO82poITWWvuC9/xKb4iQz5QxIktl9X/g7Aa+g3HvLmYuz6YxvCzRLVrLLJta5OzCRDBwZ/PUE7yZBwFt+nIO7DsfZ+c12/yGV9coGdx3oVVQILv82XHGwxx0L9hge0KKtaddjpy/hoMDGWKfqnChosB0MbobPjAWcxaII9lId0esSa7jGgCW4O4Lzfiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h88cX+UwMLi2xGHR1XCpvuUzfazH0WRt8PXmqLbo794=;
 b=Ibw0c3AGeDAN5x+wraBYWn7z8b0YqbM47Mire3gWKKG5O9VEzK9IADLP20BWg0X6xiJfi8ypv//vZIf5xtieMdR1q8lgejeMN3ZrP5vWGuDU/VdD50uvbp+UaDV6rjp0BLQH1jz2EJGGRPYryIu4mb8ZQTO1e6Xh+X/WNJzezzjpOltSUPubRJZ1vip4UT3v1PNQ5bEuEyv7laqaun8vVfHGSlQNjaaepDp99gIEBfnADmGjjs21co7EFnY0LTs4ZvLGK+pN1cVxH3WZepMX/BR9OORigyA4QLluSYFVEP8PSBhVt7c7+dKPgPo4v9kpRezQ8F57hodsSdK+eH4G4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h88cX+UwMLi2xGHR1XCpvuUzfazH0WRt8PXmqLbo794=;
 b=SsLffsU87DSJ47m4w6jef8FTnLz6KKZi1VFzePeqMkLepLPJAfBBKIHaZVJ6tUkqBmpZnR/fKO4QyV6e6w51G87w4HBi4P7MhfLq6Dl8BrRTt5kvItYruHkd5njw+nSAfmaJYWgLwVRTBhScOS9OXfwhWnFFNvyDVLO+ewv2OAg=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM5PR11MB1483.namprd11.prod.outlook.com (2603:10b6:4:e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3564.28; Tue, 17 Nov 2020 10:04:01 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::f983:dc6d:ad81:9e18]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::f983:dc6d:ad81:9e18%7]) with mapi id 15.20.3564.028; Tue, 17 Nov 2020
 10:04:01 +0000
From: <Christian.Gromm@microchip.com>
To: <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2] drivers: most: add ALSA sound driver
Thread-Topic: [PATCH v2] drivers: most: add ALSA sound driver
Thread-Index: AQHWtFo41Os4vkblKke0fdQNlR9SoqnBE80AgAr1QICAAAk1AIAAFvoA
Date: Tue, 17 Nov 2020 10:04:01 +0000
Message-ID: <78cc59b31042f865e947a2c09a5d10cc60ddc01c.camel@microchip.com>
References: <1604680254-17185-1-git-send-email-christian.gromm@microchip.com>
 <20201110084826.GE29398@kadam>
 <564d35a4fc32866f91f5bf3fb1bb16a5c67b3d9e.camel@microchip.com>
 <20201117084145.GB29398@kadam>
In-Reply-To: <20201117084145.GB29398@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.30.5-1.1 
authentication-results: oracle.com; dkim=none (message not signed)
 header.d=none;oracle.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [109.250.134.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 471dd1ad-dc24-494d-2590-08d88ae01be0
x-ms-traffictypediagnostic: DM5PR11MB1483:
x-microsoft-antispam-prvs: <DM5PR11MB14839DB9670ED5D90AEA697DF8E20@DM5PR11MB1483.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HQ2vLaRcsYeoiHFuU8DHpsMMppmKMa09GPOXWW69juvh+fvPp0vhd1SqMfZ/mzkAaKVxaGyHzAVrMT+Z298VzPfe/g6qFFx956MfGtcrtFPLIj3wUKq2Tol8m2Ri81To/8W4gLWxxxH0xMzr/V5lkt3YFKkUZImtgsGsT9A26NZNxjzR4mG++iT2jDg+POrl143/0nIBdPOrnEz6H59cVzRUDTdJJL3kT8oNySWVM7f9h5AaZBeDLtYB2r46deUJThkOJliyq6Egr17TyM/pJR5w9mk8YT9h+U/WU0P8SNNBz4b4Qno8YYQNTaTbDkHm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(136003)(39860400002)(366004)(396003)(478600001)(91956017)(76116006)(6916009)(83380400001)(66946007)(2616005)(66476007)(86362001)(4001150100001)(8936002)(4326008)(8676002)(36756003)(5660300002)(186003)(6512007)(54906003)(2906002)(64756008)(66556008)(6486002)(66446008)(71200400001)(6506007)(316002)(26005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: eRD0ZsPhI/kO0Z+LBIlmWlgZ1nAQqCzJqGohZcBG42nLgEjgPqzDVODyb38WPpsSkOmVGTssD1uxdHFjPIo5kW7g7chwi61Rkp1D4ySZonoPqMKtalY9mro4kfBRmR1SAcEl54d3okCOw10kQEsmt0o9XnujZdMTc6AwE10wvPs7dBuKBAQ5kQLI2qDB7VXOSgjA53PapcE2DVDuhnhVpORanuWVW1urbA8oONu+4fm9Tpdj34G8Xpa+27c54eHfStf4Z4eGKrfh357qgEiu94qeFfapdPTpBKqhVDJuPbT/BTaOJwlyuISIaZmqZrPUeoEDKqdLoVnZ0oSxeSG2NLTvLiPpfjXuRqDGD0gHPv4oGEDymLuwPzUH6c4njw6hJHGrfKjvFLAsp5WQS44VbWES5hpzjOc2CE11of1NpotG5yKEyhKGqxb94Td18ybzQlZAQUEFDEX5EfApWAAuCrtFyXNjiyQ8ekNdwMrj/fvTKE56920etQdvsvGsiSpFjjFYp4MQLRo5ihQYqxXW0Om2sir3KK4wXjQhIAYhYCvm4cXpxZAkrNmVFBoCJbSgStT6viZcctiFdPwsZRIhgb2+mEtwkBLz6B9NfWwIatHXfGEXTFgRLw7H7ZH3q5GfRtXj+bNOqZ/YIwojkbgkBp84pErk3/VdzmL0SrFSdjkO+Tc7qqsxK+vfYlYQHHCnMNFx9EO+d94qcldAIH3VGnUy9TKw/Brpu7AqjDcspp2DPeT9qtX+9KSKZYMzSmoVKSqO/c5b5G74IhysVoYc+h6UZTOKQiWdxLq6TCZ+gkqHpmRKtf+Z1K4AJcpdPPg1LyKB+bEYHsrpOBpCriXX95i36i2UYTN6T19w5qVm/LzJbWpT1ExpcuQ4lZTwpSIxGOCh11QY5fXqVNjvWnT4LA==
x-ms-exchange-transport-forked: True
Content-ID: <3F0129C032C8AD478A34B24B751DFBF3@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 471dd1ad-dc24-494d-2590-08d88ae01be0
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2020 10:04:01.6517 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xi7xlSEhO48l30YPbleTb/n/ayVEwhq9+rGc56rcJ7BKf8gC+cqZPDZX10yNWo6LWM285j3pD/kQF6sU7ZkwBPV3KFQ1ZAebtiQD36uEQ40=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1483
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

On Tue, 2020-11-17 at 11:41 +0300, Dan Carpenter wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Tue, Nov 17, 2020 at 08:08:50AM +0000, Christian.Gromm@microchip.com wrote:
> > On Tue, 2020-11-10 at 11:48 +0300, Dan Carpenter wrote:
> > > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > > 
> > > On Fri, Nov 06, 2020 at 05:30:54PM +0100, Christian Gromm wrote:
> > > > +static struct list_head adpt_list;
> > > > +
> > > > +#define MOST_PCM_INFO (SNDRV_PCM_INFO_MMAP | \
> > > > +                    SNDRV_PCM_INFO_MMAP_VALID | \
> > > > +                    SNDRV_PCM_INFO_BATCH | \
> > > > +                    SNDRV_PCM_INFO_INTERLEAVED | \
> > > > +                    SNDRV_PCM_INFO_BLOCK_TRANSFER)
> > > > +
> > > > +static void swap_copy16(u16 *dest, const u16 *source, unsigned int bytes)
> > > > +{
> > > > +     unsigned int i = 0;
> > > > +
> > > > +     while (i < (bytes / 2)) {
> > > > +             dest[i] = swab16(source[i]);
> > > > +             i++;
> > > > +     }
> > > > +}
> > > > +
> > > > +static void swap_copy24(u8 *dest, const u8 *source, unsigned int bytes)
> > > > +{
> > > > +     unsigned int i = 0;
> > > > +
> > > > +     while (i < bytes - 2) {
> > > 
> > > Can bytes ever be zero?  If so then this will corrupt memory and crash.
> > > 
> > > Generally "int i;" is less risky than "unsigned int i;".  Of course, I
> > > recently almost introduced a situation where we were copying up to
> > > ULONG_MAX bytes so there are times when iterators should be size_t so
> > > that does happen.  It could be buggy either way is what I'm saying but
> > > generally "unsigned int i;" is more often buggy.
> > > 
> > > > +             dest[i] = source[i + 2];
> > > > +             dest[i + 1] = source[i + 1];
> > > > +             dest[i + 2] = source[i];
> > > > +             i += 3;
> > > > +     }
> > > > +}
> > > > +
> > > > +static void swap_copy32(u32 *dest, const u32 *source, unsigned int bytes)
> > > > +{
> > > > +     unsigned int i = 0;
> > > > +
> > > > +     while (i < bytes / 4) {
> > > > +             dest[i] = swab32(source[i]);
> > > > +             i++;
> > > > +     }
> > > > +}
> > > > +
> > > > +static void alsa_to_most_memcpy(void *alsa, void *most, unsigned int bytes)
> > > > +{
> > > > +     memcpy(most, alsa, bytes);
> > > > +}
> > > > +
> > > > +static void alsa_to_most_copy16(void *alsa, void *most, unsigned int bytes)
> > > > +{
> > > > +     swap_copy16(most, alsa, bytes);
> > > > +}
> > > > +
> > > > +static void alsa_to_most_copy24(void *alsa, void *most, unsigned int bytes)
> > > > +{
> > > > +     swap_copy24(most, alsa, bytes);
> > > > +}
> > > > +
> > > > +static void alsa_to_most_copy32(void *alsa, void *most, unsigned int bytes)
> > > > +{
> > > > +     swap_copy32(most, alsa, bytes);
> > > > +}
> > > > +
> > > > +static void most_to_alsa_memcpy(void *alsa, void *most, unsigned int bytes)
> > > > +{
> > > > +     memcpy(alsa, most, bytes);
> > > > +}
> > > > +
> > > > +static void most_to_alsa_copy16(void *alsa, void *most, unsigned int bytes)
> > > > +{
> > > > +     swap_copy16(alsa, most, bytes);
> > > > +}
> > > > +
> > > > +static void most_to_alsa_copy24(void *alsa, void *most, unsigned int bytes)
> > > > +{
> > > > +     swap_copy24(alsa, most, bytes);
> > > > +}
> > > > +
> > > > +static void most_to_alsa_copy32(void *alsa, void *most, unsigned int bytes)
> > > > +{
> > > > +     swap_copy32(alsa, most, bytes);
> > > > +}
> > > > +
> > > > +/**
> > > > + * get_channel - get pointer to channel
> > > > + * @iface: interface structure
> > > > + * @channel_id: channel ID
> > > > + *
> > > > + * This traverses the channel list and returns the channel matching the
> > > > + * ID and interface.
> > > > + *
> > > > + * Returns pointer to channel on success or NULL otherwise.
> > > > + */
> > > > +static struct channel *get_channel(struct most_interface *iface,
> > > > +                                int channel_id)
> > > > +{
> > > > +     struct sound_adapter *adpt = iface->priv;
> > > > +     struct channel *channel, *tmp;
> > > > +
> > > > +     list_for_each_entry_safe(channel, tmp, &adpt->dev_list, list) {
> > > > +             if ((channel->iface == iface) && (channel->id == channel_id))
> > > > +                     return channel;
> > > 
> > > No need to use the _safe() version of this loop macro.  You're not
> > > freeing anything.  My concern is that sometimes people think the _safe()
> > > has something to do with locking and it does not.
> > > 
> > > > +     }
> > > > +     return NULL;
> > > > +}
> > > > +
> > > 
> > > [ Snip ]
> > > 
> > > > +/**
> > > > + * audio_probe_channel - probe function of the driver module
> > > > + * @iface: pointer to interface instance
> > > > + * @channel_id: channel index/ID
> > > > + * @cfg: pointer to actual channel configuration
> > > > + * @arg_list: string that provides the name of the device to be created in /dev
> > > > + *         plus the desired audio resolution
> > > > + *
> > > > + * Creates sound card, pcm device, sets pcm ops and registers sound card.
> > > > + *
> > > > + * Returns 0 on success or error code otherwise.
> > > > + */
> > > > +static int audio_probe_channel(struct most_interface *iface, int channel_id,
> > > > +                            struct most_channel_config *cfg,
> > > > +                            char *device_name, char *arg_list)
> > > > +{
> > > > +     struct channel *channel;
> > > > +     struct sound_adapter *adpt;
> > > > +     struct snd_pcm *pcm;
> > > > +     int playback_count = 0;
> > > > +     int capture_count = 0;
> > > > +     int ret;
> > > > +     int direction;
> > > > +     u16 ch_num;
> > > > +     char *sample_res;
> > > > +     char arg_list_cpy[STRING_SIZE];
> > > > +
> > > > +     if (cfg->data_type != MOST_CH_SYNC) {
> > > > +             pr_err("Incompatible channel type\n");
> > > > +             return -EINVAL;
> > > > +     }
> > > > +     strlcpy(arg_list_cpy, arg_list, STRING_SIZE);
> > > > +     ret = split_arg_list(arg_list_cpy, &ch_num, &sample_res);
> > > > +     if (ret < 0)
> > > > +             return ret;
> > > > +
> > > > +     list_for_each_entry(adpt, &adpt_list, list) {
> > > > +             if (adpt->iface != iface)
> > > > +                     continue;
> > > > +             if (adpt->registered)
> > > > +                     return -ENOSPC;
> > > > +             adpt->pcm_dev_idx++;
> > > > +             goto skip_adpt_alloc;
> > > 
> > > It's weird how if the "channel = " allocation fails, then we free this
> > > "adpt" which we didn't allocate.
> > 
> > We actually did allocate it in a previous call to this function.
> > Otherwise we would not jump to the skip_adpt_alloc label. And if
> > we don't jump there, we are allocating it right away.
> > 
> 
> I mean obviously everyone can see that it was allocated by an earlier
> call to the function.  What I mean is that it's a layering violation.
> The unwind would normally be done in the caller.
> 
> Is it okay to delete the adapter without emptying the mdev_link_list
> as well?
> 
Not necessarily, as when we are at this point the setup is already
messed up and needs to be reconfigured from scratch anyway. This
involves the call to mdev_link_destroy_link_store() that cleans up
everything.

thanks,
Chris

> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
