Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 094C427983E
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Sep 2020 12:12:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2FBF586B2C;
	Sat, 26 Sep 2020 10:12:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G7pNM-d-lL5C; Sat, 26 Sep 2020 10:12:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E38EE86B34;
	Sat, 26 Sep 2020 10:12:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 222DD1BF5A3
 for <devel@linuxdriverproject.org>; Sat, 26 Sep 2020 10:12:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1EA0B86CE1
 for <devel@linuxdriverproject.org>; Sat, 26 Sep 2020 10:12:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wzzkDaFcOaAV for <devel@linuxdriverproject.org>;
 Sat, 26 Sep 2020 10:12:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2463086C73
 for <devel@driverdev.osuosl.org>; Sat, 26 Sep 2020 10:12:04 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-64-PSRh-TBCNJOepc9cDIXbnQ-1; Sat, 26 Sep 2020 11:12:00 +0100
X-MC-Unique: PSRh-TBCNJOepc9cDIXbnQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Sat, 26 Sep 2020 11:11:59 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Sat, 26 Sep 2020 11:11:59 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Coiby Xu' <coiby.xu@gmail.com>
Subject: RE: [PATCH 3/3] [PATCH] staging: greybus: __u8 is sufficient for
 snd_ctl_elem_type_t and snd_ctl_elem_iface_t
Thread-Topic: [PATCH 3/3] [PATCH] staging: greybus: __u8 is sufficient for
 snd_ctl_elem_type_t and snd_ctl_elem_iface_t
Thread-Index: AQHWklx17fnZOC5vd0GG3zjgQ4eUS6l3nRcQgAG47oCAAV+6oA==
Date: Sat, 26 Sep 2020 10:11:59 +0000
Message-ID: <cd09e7c7abaa4700bf9a0245d5844c44@AcuMS.aculab.com>
References: <20200924102039.43895-1-coiby.xu@gmail.com>
 <20200924102039.43895-3-coiby.xu@gmail.com>
 <0175c477851243baa8a92177667d6312@AcuMS.aculab.com>
 <20200925141125.vfm5sjnsfvxo2ras@Rk>
In-Reply-To: <20200925141125.vfm5sjnsfvxo2ras@Rk>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
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
 "moderated list:SOUND" <alsa-devel@alsa-project.org>,
 Alex Elder <elder@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Takashi Iwai <tiwai@suse.com>,
 Johan Hovold <johan@kernel.org>, Mark Greer <mgreer@animalcreek.com>,
 "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 Jaroslav Kysela <perex@perex.cz>, open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Coiby Xu
> Sent: 25 September 2020 15:11
> 
> On Thu, Sep 24, 2020 at 10:54:50AM +0000, David Laight wrote:
> >From: Coiby Xu
> >> Sent: 24 September 2020 11:21
> >> Use __8 to replace int and remove the unnecessary __bitwise type attribute.
> >>
> >> Found by sparse,
> >...
> >> diff --git a/include/uapi/sound/asound.h b/include/uapi/sound/asound.h
> >> index 535a7229e1d9..8e71a95644ab 100644
> >> --- a/include/uapi/sound/asound.h
> >> +++ b/include/uapi/sound/asound.h
> >> @@ -950,7 +950,7 @@ struct snd_ctl_card_info {
> >>  	unsigned char components[128];	/* card components / fine identification, delimited with one
> >> space (AC97 etc..) */
> >>  };
> >>
> >> -typedef int __bitwise snd_ctl_elem_type_t;
> >> +typedef __u8 snd_ctl_elem_type_t;
> >>  #define	SNDRV_CTL_ELEM_TYPE_NONE	((__force snd_ctl_elem_type_t) 0) /* invalid */
> >>  #define	SNDRV_CTL_ELEM_TYPE_BOOLEAN	((__force snd_ctl_elem_type_t) 1) /* boolean type */
> >>  #define	SNDRV_CTL_ELEM_TYPE_INTEGER	((__force snd_ctl_elem_type_t) 2) /* integer type */
> >
> >WTF is all that about anyway??
> >What is wrong with:
> >#define	SNDRV_CTL_ELEM_TYPE_NONE	0u /* invalid */
> 
> I'm sorry I don't quite understand you. Are you suggesting SNDRV_CTL_ELEM_TYPE_NONE
> isn't needed in the first place?

No, just remove all the casts from the constants.
Are the types even used anywhere else?

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
