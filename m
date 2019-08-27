Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0049EF98
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 18:01:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8DCB78850E;
	Tue, 27 Aug 2019 16:01:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sp6ywLbTiJri; Tue, 27 Aug 2019 16:01:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2134D884E6;
	Tue, 27 Aug 2019 16:01:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 57B881BF576
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 16:01:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5353C20773
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 16:01:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AsAMAoCRaQkT for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 16:01:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sonic317-20.consmr.mail.gq1.yahoo.com
 (sonic317-20.consmr.mail.gq1.yahoo.com [98.137.66.146])
 by silver.osuosl.org (Postfix) with ESMTPS id 92E6A2152E
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 16:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1566921675; bh=Va2OG6Wv03uRNYmTvJK00J7t+7d/cvOorlhT1YLsbWY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=F4gvlveWdkHbKVyFb+OeeF2Fe8+BTVjzpoSx2Qsh0eva6UGBRqg+GeUVIs1fs4XzZh3GtDLUsZDjCidvPMpyhDgvHfxu6iqzkfD0HRlJjfdNSnJxVuwKUw0V4P/3ONWv0m3olC6fMtp7XJx0Lxaa/EKKPD8PVHpkzCezMesCD6Q+17IQdBurLwxcg0IqwHDd+y6tHNRuqccuYrt109vxf2fCyjJKYlNS+xRNFI/Dq1Cme960+4tutjGdEHOPZYoHi8Hfa/aJynBKmQpUsckTKGEN2wyCZux51dLIh6FmqhRVCWvmL0MTZIES+1+Kp/y34h2cTM1BsvboL8phezqRGQ==
X-YMail-OSG: kTwfsoYVM1kKOYH3tMwGmZuqz8tbQCyawtzzTzVO1fVcgqeNqTC06hNPdz5STjl
 Oluz4GjRd47QL.jrQfmYbrCF9dBHz3_j8.eCb2Qst8TrYwvRvq6MRh3Dl_.cy3m8QPVNntm24ROn
 bhXYfFktMA9DvNywvxVeTAPwhtBHcTl.YYAveR6SZBI.qkNWJXevtqXkqHppkF8j0TBCmxGqex_g
 j3JIVx5l5frPlT28ikkOHJGpFGwR3Xo.brjO52I32OjweaIMezoCIcbAt7O7wzEz_AsyW_aLjJS8
 el_g2LmSpf_ZJrFfjcZxOd3jrbNEwFiHvlIw7DJSPztIyf2h9ahLYQlKkc.pSQw6gJAFTpoHiGbO
 Buz59A.uLJwUYUBUtst.4uxpfZaxewwUqT7A1_TJXbxJ7b37wSk9HQoaPc_8uPL0Or5Neqi30Hhn
 bOZltRy1Tdacn57HMaQ3JX.f9nWJizUNkuXMQVPN3TotipIDRqHB2jLn3ZVQEW54yXCgNv4qoqjl
 14huE60B7cBiG_3Cvh14EGXaT9PkdA3x4CLS0DRFIuZcbIa4.Qtg6zKn0SuNZ1ATpIZgcfl9keXS
 Eb33Yfny3OtJEIZhW0beqyUMtONUK2HPfckjxhju6HjNkDFrEGdgvzF9frbYPI6J3nBl2EbvSq01
 4js6LgldBRMwd5D.yUPlG8kygrN4uM881pJnGJnp5oFvhQ2soCf0aHAY2MSTNKr10plhELeO66YJ
 NP3QtaBUEtiQJEg1O_aFkbbnItzaMyBIs9mlvIPqPJGKEt2PYHIWXKu9GEEuz3AzUPM9.rSpNdYq
 HdSNya_dGN8RnRseQcaHcTAh._uqN6S4GE._QDyItIExG1wUh9yHY0AbdAIzOOt8awVgyBKygpkp
 _GFBxMVHFx0eGCJU6ZaSw4zpZ3bRIJ6qGtxQKoj69Xbj8lzXpXjoACy7VIxvgT0JZ8m.LG3sBh_l
 _O.2L3sqbGuycBRLrD8CLVFXdjvg2mJnMY6rik64ate..eHimzv1o2loVeVzU6fVEvpDLTLt0pHg
 KMrehpuf4s.HGhem4Dw6tD8zmtVeilEuRmxML0f8afpvmV6HZdkgmZTTQJx4o83Eg8cvXWMUAqad
 CAkjVC3GC8nvp_PIJVNvmLKpJJfBGK3bch6uYgYhInBod1zR.dqI0kW4Q_WG3E7UxWTAbrLikwyA
 GWKiK6NvcWLWyFbQ8f9quGqT6lyn9vtfi8be47aJxC6JnuhBUv.Od6QVAuv4rWQjIQrHlHsOwlwr
 voU5gzpWIKprBQHXqh4y1pbE1RWI4
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic317.consmr.mail.gq1.yahoo.com with HTTP; Tue, 27 Aug 2019 16:01:15 +0000
Received: by smtp428.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 5f6ccd683c4adab0833962eb3ba498ab; 
 Tue, 27 Aug 2019 16:01:14 +0000 (UTC)
Date: Wed, 28 Aug 2019 00:01:03 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/9] staging: greybus: fix up SPDX comment in .h files
Message-ID: <20190827160059.GA21783@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190825055429.18547-2-gregkh@linuxfoundation.org>
 <20190826055119.4pbmf5ape224giwz@vireshk-i7>
 <20190827075802.GA29204@kroah.com>
 <20190827092036.GA138083@architecture4>
 <20190827154343.GE534@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827154343.GE534@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>, yuchao0@huawei.com, johan@kernel.org,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 Viresh Kumar <vireshk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 27, 2019 at 05:43:43PM +0200, Greg Kroah-Hartman wrote:
> On Tue, Aug 27, 2019 at 05:20:36PM +0800, Gao Xiang wrote:
> > Hi Greg,
> > 
> > On Tue, Aug 27, 2019 at 09:58:02AM +0200, Greg Kroah-Hartman wrote:
> > > On Mon, Aug 26, 2019 at 11:21:19AM +0530, Viresh Kumar wrote:
> > > > On 25-08-19, 07:54, Greg Kroah-Hartman wrote:
> > > > > When these files originally got an SPDX tag, I used // instead of /* */
> > > > > for the .h files.  Fix this up to use // properly.
> > > > > 
> > > > > Cc: Viresh Kumar <vireshk@kernel.org>
> > > > > Cc: Johan Hovold <johan@kernel.org>
> > > > > Cc: Alex Elder <elder@kernel.org>
> > > > > Cc: greybus-dev@lists.linaro.org
> > > > > Cc: devel@driverdev.osuosl.org
> > > > > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > > > ---
> > > > >  drivers/staging/greybus/firmware.h               | 2 +-
> > > > >  drivers/staging/greybus/gb-camera.h              | 2 +-
> > > > >  drivers/staging/greybus/gbphy.h                  | 2 +-
> > > > >  drivers/staging/greybus/greybus.h                | 2 +-
> > > > >  drivers/staging/greybus/greybus_authentication.h | 2 +-
> > > > >  drivers/staging/greybus/greybus_firmware.h       | 2 +-
> > > > >  drivers/staging/greybus/greybus_manifest.h       | 2 +-
> > > > >  drivers/staging/greybus/greybus_protocols.h      | 2 +-
> > > > >  drivers/staging/greybus/greybus_trace.h          | 2 +-
> > > > >  drivers/staging/greybus/hd.h                     | 2 +-
> > > > >  drivers/staging/greybus/interface.h              | 2 +-
> > > > >  drivers/staging/greybus/manifest.h               | 2 +-
> > > > >  drivers/staging/greybus/module.h                 | 2 +-
> > > > >  drivers/staging/greybus/operation.h              | 2 +-
> > > > >  drivers/staging/greybus/spilib.h                 | 2 +-
> > > > >  drivers/staging/greybus/svc.h                    | 2 +-
> > > > >  16 files changed, 16 insertions(+), 16 deletions(-)
> > > > 
> > > > Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> > > 
> > > Thanks for all of the acks!
> > > 
> > > greg k-h
> > 
> > I found similar issues of graybus when I tested the latest staging-testing
> > 
> > In file included from <command-line>:0:0:
> > ./include/linux/greybus/greybus_protocols.h:45:2: error: unknown type name ??????_le16??????
> >   __le16 size;  /* Size in bytes of header + payload */
> >   ^~~~~~
> > ./include/linux/greybus/greybus_protocols.h:46:2: error: unknown type name ??????_le16??????
> >   __le16 operation_id; /* Operation unique id */
> >   ^~~~~~
> > ./include/linux/greybus/greybus_protocols.h:47:2: error: unknown type name ??????_u8??????
> >   __u8 type;  /* E.g GB_I2C_TYPE_* or GB_GPIO_TYPE_* */
> >   ^~~~
> > ./include/linux/greybus/greybus_protocols.h:48:2: error: unknown type name ??????_u8??????
> >   __u8 result;  /* Result of request (in responses only) */
> >   ^~~~
> > ./include/linux/greybus/greybus_protocols.h:49:2: error: unknown type name ??????_u8??????
> >   __u8 pad[2];  /* must be zero (ignore when read) */
> >   ^~~~
> > ./include/linux/greybus/greybus_protocols.h:58:2: error: unknown type name ??????_u8??????
> >   __u8 phase;
> >   ^~~~
> > ./include/linux/greybus/greybus_protocols.h:88:2: error: unknown type name ??????_u8??????
> >   __u8 major;
> >   ^~~~
> > ./include/linux/greybus/greybus_protocols.h:89:2: error: unknown type name ??????_u8??????
> >   __u8 minor;
> >   ^~~~
> > ./include/linux/greybus/greybus_protocols.h:93:2: error: unknown type name ??????_u8??????
> >   __u8 major;
> >   ^~~~
> > ./include/linux/greybus/greybus_protocols.h:94:2: error: unknown type name ??????_u8??????
> >   __u8 minor;
> >   ^~~~
> > ./include/linux/greybus/greybus_protocols.h:98:2: error: unknown type name ??????_u8??????
> >   __u8 bundle_id;
> >   ^~~~
> > ./include/linux/greybus/greybus_protocols.h:102:2: error: unknown type name ??????_u8??????
> >   __u8 major;
> >   ^~~~
> > ./include/linux/greybus/greybus_protocols.h:103:2: error: unknown type name ??????_u8??????
> >   __u8 minor;
> >   ^~~~
> > ./include/linux/greybus/greybus_protocols.h:108:2: error: unknown type name ??????_le16??????
> >   __le16   size;
> >   ^~~~~~
> > ./include/linux/greybus/greybus_protocols.h:113:2: error: unknown type name ??????_u8??????
> >   __u8   data[0];
> >   ^~~~
> > ./include/linux/greybus/greybus_protocols.h:118:2: error: unknown type name ??????_le16??????
> >   __le16   cport_id;
> >   ^~~~~~
> > ./include/linux/greybus/greybus_protocols.h:122:2: error: unknown type name ??????_le16??????
> >   __le16   cport_id;
> > 
> > .. and other files...
> > 
> > Not very sure... but it seems it can be observed with allmodconfig or
> > CONFIG_KERNEL_HEADER_TEST=y and fail my compilation...
> > Hope that of some help (kind reminder...)
> 
> Ah, thank you so much for this, NOW that makes sense why I got that odd
> kbuild warning that I could not figure out.

Yeah, it seems KERNEL_HEADER_TEST is a new feature which aims at ensuring
kernel headers are self-contained... I think it can be observed by
  CONFIG_GREYBUS and CONFIG_KERNEL_HEADER_TEST are on

see commit 43c78d88036e ("kbuild: compile-test kernel headers to ensure they are self-contained")

> 
> Let me go fix this up, thank you so much.

You're welcome, I was just testing my previous patch after merging as well...

Thanks,
Gao Xiang

> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
