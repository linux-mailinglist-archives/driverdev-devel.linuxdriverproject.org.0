Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1E631EE50
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 19:33:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BBD58869C9;
	Thu, 18 Feb 2021 18:33:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mvGNFcyJRWY5; Thu, 18 Feb 2021 18:32:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A5965869F8;
	Thu, 18 Feb 2021 18:32:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E81431BF33A
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 18:32:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E53E486C14
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 18:32:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gSDPnbrf6Ocv for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 18:32:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4BEC786738
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 18:32:55 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8E27E64EB6
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 18:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1613673174;
 bh=3nApWYaYT6uKLdVo8ZivGJbPBdIQTHvCvFWsSwJeRSE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Cojte3qpDBph2vi6sJqqlwKaFr/r6xvLHBVaiWWnt/yYm/BJ6IRLsfNFzfUAhvVh0
 +A9uf1ToDe2OFfWhe6SQOzYsrLmTNZW46X20RMfTSifWXdA7PPFlUCZ8G35F5dbkRs
 IdCDZEQm2KBtIJ2bJ1G//CaJgKT1UnrPU87L/zJRTsLySDtheZi0Ry4tEjtzoHYx4K
 qabXokMqsaGEcAnadt2VWQ/eJZLGlWW2QSpkYWTDaCx0gqJuTHQXlayGDQKViU+68M
 mwM71bo3z43VWROnRQLBrcVmdcw2imDA7MWQRx1iSq0wag8YEnj3M/udn/wPT1Pw4U
 QE0lB86SPao8A==
Received: by mail-oi1-f177.google.com with SMTP id h17so3045697oih.5
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 10:32:54 -0800 (PST)
X-Gm-Message-State: AOAM532OuMXpkAjSYGojFnRTNHfEokPwRQ2MHnpMoTQ2QwUlCyHu9QF4
 exvbd0V74/0uYUJlsY/aqMW/6/8iaKl511fiZiM=
X-Google-Smtp-Source: ABdhPJzWc8JGGWrGZV52RofpCpoCpUMCOmaFnEv3uRVLCUCOuOdQeH0/ye62sd6+ICOX91qmQshhHCIlAO3G1dCFBgY=
X-Received: by 2002:aca:aad4:: with SMTP id t203mr3596853oie.67.1613673173738; 
 Thu, 18 Feb 2021 10:32:53 -0800 (PST)
MIME-Version: 1.0
References: <20210218092154.GA46388@LEGION> <YC42ECUUtX1Ah90v@kroah.com>
 <f44c413467df665de9bd1ecbee6d76222518c0c7.camel@gmail.com>
In-Reply-To: <f44c413467df665de9bd1ecbee6d76222518c0c7.camel@gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 18 Feb 2021 19:32:37 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0+dD99CfuZYHkZNHjmZhvZqGt-j=X1v=N7DH4Ac_OAMQ@mail.gmail.com>
Message-ID: <CAK8P3a0+dD99CfuZYHkZNHjmZhvZqGt-j=X1v=N7DH4Ac_OAMQ@mail.gmail.com>
Subject: Re: [PATCH] staging: wimax/i2400m: don't change the endianness of one
 byte variable
To: Muhammad Usama Anjum <musamaanjum@gmail.com>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, wanghai38@huawei.com,
 Arnd Bergmann <arnd@arndb.de>, Greg KH <gregkh@linuxfoundation.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 18, 2021 at 10:54 AM Muhammad Usama Anjum
<musamaanjum@gmail.com> wrote:
>
> On Thu, 2021-02-18 at 10:40 +0100, Greg KH wrote:
> > On Thu, Feb 18, 2021 at 02:21:54PM +0500, Muhammad Usama Anjum wrote:
> > > It is wrong to change the endianness of a variable which has just one
> > > byte size.
> > >
> > > Sparse warnings fixed:
> > > drivers/staging//wimax/i2400m/control.c:452:17: warning: cast to restricted __le32
> > > drivers/staging//wimax/i2400m/control.c:452:17: warning: cast to restricted __le32
> > > drivers/staging//wimax/i2400m/op-rfkill.c:159:14: warning: cast to restricted __le32
> > > drivers/staging//wimax/i2400m/op-rfkill.c:160:14: warning: cast to restricted __le32
> > >
> > > Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
> > > ---
> > >  drivers/staging/wimax/i2400m/control.c   | 4 ++--
> > >  drivers/staging/wimax/i2400m/op-rfkill.c | 4 ++--
> > >  2 files changed, 4 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/staging/wimax/i2400m/control.c b/drivers/staging/wimax/i2400m/control.c
> > > index 1e270b2101e8..b6b2788af162 100644
> > > --- a/drivers/staging/wimax/i2400m/control.c
> > > +++ b/drivers/staging/wimax/i2400m/control.c
> > > @@ -452,8 +452,8 @@ void i2400m_report_state_parse_tlv(struct i2400m *i2400m,
> > >             d_printf(2, dev, "%s: RF status TLV "
> > >                      "found (0x%04x), sw 0x%02x hw 0x%02x\n",
> > >                      tag, I2400M_TLV_RF_STATUS,
> > > -                    le32_to_cpu(rfss->sw_rf_switch),
> > > -                    le32_to_cpu(rfss->hw_rf_switch));
> > > +                    rfss->sw_rf_switch,
> > > +                    rfss->hw_rf_switch);
> >
> > What do you mean by "one byte"?  This is a le32 sized variable, right?
> > If not, why isn't the le32_to_cpu() call complaining?
>
> These two variables are of type _u8, one byte.
>         __u8 sw_rf_switch;
>         __u8 hw_rf_switch;
> They aren't of type __le32. le32_to_cpu() macro should have
> complained. But it isn't complaining. It seems like whatever we pass
> to this macro, it casts it to __le32 forcefully (it seems like wrong).
> So we'll never get any complain from this macro directly. But we are
> getting complain from the sparse.
>
> For big endian:
> #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
> For little endian:
> #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))

Right, it seems this driver has been broken on big-endian ever since
it was first merged in 2008.

        Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
