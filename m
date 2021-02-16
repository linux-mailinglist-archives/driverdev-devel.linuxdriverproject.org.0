Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8664B31CAE6
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 14:12:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 37AB4870E4;
	Tue, 16 Feb 2021 13:12:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y1HPMf2QdMiE; Tue, 16 Feb 2021 13:12:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 17AD986EC0;
	Tue, 16 Feb 2021 13:12:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4BB5C1BF5F6
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 13:12:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2E0C2866FB
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 13:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8oFtUOnmvZmW for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 13:12:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
 [209.85.216.49])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 93B52866F7
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 13:12:28 +0000 (UTC)
Received: by mail-pj1-f49.google.com with SMTP id kr16so998094pjb.2
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 05:12:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Qg++BR4YFUjyAHfoKld1VJ6/R1HxdhJfQl/z4by+2lY=;
 b=KOFn9gSGEoyyyW78JHNbgzoJaBAmt0cJtxrfH8hpG/kC79OXSckh1GDru4M3xgnxev
 OgnYyW5JLXa1FsEkWbiWxbM25lHDixZQ6wi0GeTuzvS78+6KM1d5eolWsrcR9LewrtyO
 7zmJxBBO79COnf7TgwIQVy8AXN115Ogu4w7HjzBWm/sGHDBkcPaa2cq6PGnbiItY50pe
 jvUIRb8kxuFH64wP3BVmA/UjH3E5CBrrNV2EuxiqfdjUbS1jYSf+wh+cXvK+7B66k6mn
 fpeFU3mKrvzLjfJFb66M951KDCIGa/I0KSKRo8Fr8ZSAGVFOS258Bx/21Qh4/kaW7Tlw
 yfTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Qg++BR4YFUjyAHfoKld1VJ6/R1HxdhJfQl/z4by+2lY=;
 b=h2psEpdNSuf+w29kt5H6ZyJf5wuSue6FAiI/Gulnb7RqizvUdKkOpkar0Mt7C3RaDd
 fvVzECHCWwXN0W7y6GB2OHBDIbpXIogEQPLGZMIADSbNgU2WWDY12gZ9tNOzoc167vop
 jjKSNfnlScpnJnWA8z4LDaFCArziccn5UNmGL2gJNXxnbexolShRac+PAAhItU2DG8M9
 GP7sLY88wU1tTCdUGFPhwMQAgaSIsoX9NlKHrDpNkyORoxV06S1dhMoMjZKYG7FMGKFK
 ex9VhEq8TVr3NHo4mHTHQonNOATIbuVIXmxpTakKJ5+21KNtREy08KFSkPnzvkQk47/B
 i2AA==
X-Gm-Message-State: AOAM531dg30KCjqTsF5VgZ1oKc6MQ7Ut5tDLOJW+0VOUOcCSb5WUumXW
 aQ9rVwZznU8I4BMD7NUCbD5XVyHS1W8Tyn59
X-Google-Smtp-Source: ABdhPJyvIvI7whPga/29cabruaCDxiaToD4LaogAm+TOltVSQAP++QQ049IuV+SsrEH1H7UwIJ4LGQ==
X-Received: by 2002:a17:902:cece:b029:e1:1057:9cbe with SMTP id
 d14-20020a170902ceceb02900e110579cbemr20155654plg.31.1613481147579; 
 Tue, 16 Feb 2021 05:12:27 -0800 (PST)
Received: from ThinkCentre-M83 ([202.133.196.154])
 by smtp.gmail.com with ESMTPSA id y23sm19312687pfo.50.2021.02.16.05.12.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Feb 2021 05:12:26 -0800 (PST)
Date: Tue, 16 Feb 2021 21:12:23 +0800
From: Du Cheng <ducheng2@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2] staging: greybus: fix coding style of
 greybus/loopback.c
Message-ID: <20210216131223.GA478778@ThinkCentre-M83>
References: <20210216111353.190238-1-ducheng2@gmail.com>
 <YCusQZknNbqFef2X@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCusQZknNbqFef2X@kroah.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 16, 2021 at 12:28:01PM +0100, Greg Kroah-Hartman wrote:
> On Tue, Feb 16, 2021 at 07:13:53PM +0800, Du Cheng wrote:
> > fix macro gb_loopback_stats_attrs by wrapping its multi-line definition
> > inside a do {} while(0) block, in compliance to scripts/checkpatch.pl.
> > 
> > Signed-off-by: Du Cheng <ducheng2@gmail.com>
> > ---
> > changes v2:
> > * relign backslashes with tabstop=8
> > * improve description and subject
> > 
> > changes v1:
> > * fix coding style of the macro
> > 
> >  drivers/staging/greybus/loopback.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
> > index 2471448ba42a..24b769688817 100644
> > --- a/drivers/staging/greybus/loopback.c
> > +++ b/drivers/staging/greybus/loopback.c
> > @@ -163,9 +163,11 @@ static ssize_t name##_avg_show(struct device *dev,		\
> >  static DEVICE_ATTR_RO(name##_avg)
> >  
> >  #define gb_loopback_stats_attrs(field)				\
> > +do {								\
> >  	gb_loopback_ro_stats_attr(field, min, u);		\
> >  	gb_loopback_ro_stats_attr(field, max, u);		\
> > -	gb_loopback_ro_avg_attr(field)
> > +	gb_loopback_ro_avg_attr(field);				\
> > +} while (0)
> >  
> >  #define gb_loopback_attr(field, type)					\
> >  static ssize_t field##_show(struct device *dev,				\
> > -- 
> > 2.27.0
> 
> Did you successfully build this change?
> 
> Please do so...
> 
> thanks,
> 
> greg k-h

I realized I did not enable greybus subsystem in the config.
after the enabling CONFIG_GREYBUS_LOOPBACK=m the make failed with compilation errors.

Then I realized this macro is actually used for function definition, not as statements.
I shall take back this PATCH as the proposed change in not applicable in this case.

Thanks!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
