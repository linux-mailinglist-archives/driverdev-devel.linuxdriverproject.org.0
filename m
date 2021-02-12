Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D687319BB8
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 10:21:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A20E287268;
	Fri, 12 Feb 2021 09:21:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WaizpWsGN9Jr; Fri, 12 Feb 2021 09:21:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7BC9A86EA7;
	Fri, 12 Feb 2021 09:21:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 492111BF372
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 09:21:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 43BDA86EA7
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 09:21:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i9gYtUSQd78o for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 09:21:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8BC7586E8A
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 09:21:33 +0000 (UTC)
Received: by mail-pl1-f180.google.com with SMTP id a16so4779604plh.8
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 01:21:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4tMVbE5K32vyYAtUimwkTyAdAdVkkPvAdbHtWim/w/k=;
 b=Iozwp0/6ZNc+/VISnNCcgc6ZdqeDG7RzBah7eI4qNMID3EOieGhxwRt1sxcsdoJfyI
 rcwNJbsdvKPj/I6sM1G7awPdW7ywACJ+aLJcwYjRxOnD4q3a/s0789ljaf/fTZLqYee5
 fDFSqdrCUPKMuvArhVAGyRhdBQm3wMYZPKoifaLQOw3mf4AK4yUFajrQC/GwFwcuOCh7
 zdRZQDoVuuOi2qzLsyrBmA9nq2g7072zzVgYZ3Ch8Co3qO5NFh/yFIwBZKaARHAyLjPG
 ayesp19JfkKYFWV5cDVXV0+G34Y3FpL8YEG0yWmAvJsKLGgycQvpWb+kyo+7pGB2O1di
 d9TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4tMVbE5K32vyYAtUimwkTyAdAdVkkPvAdbHtWim/w/k=;
 b=fMlM/HAMocfVUpPkflD8Jwis0+a5CUpOJnHro+GMhmZN2Flk3ElfQZ4ETYQ/vxi8eO
 V9m2pDYQTz3hdgLHKl116x0JE9mT3yw1GLnOm1XUTMfA1wRj/qL7H1NypHAGRgKuyK8m
 VA+yN2qx2axRiNiCqWlTJ3pNjtS7HqpXBrRprHS7upOxgcw+kcZfBFL8YpUyTYJ0KgLS
 tOUzw6tgavKuhWAAl6oufwj+03RdNFD6Qeb/7guGQxfzBqZSLh0GVeu7ONpPkGUXacWF
 q5AdAHCVZ08E4p6oMUKFoZwe5El+3ieIYdHcjsiPiUfu3JCLX7ojDWJbTXnsob53sH8s
 CbPA==
X-Gm-Message-State: AOAM533rC0S1xOBvPs113BCzSMMGSoNm+r0cPeT9WuqnbFb/NLo7vT6V
 eyXTqOC7OuN6AmCsvvcUXZPcSA==
X-Google-Smtp-Source: ABdhPJzlYWbq3Uoc6euuEolsbl12AyqS4Jx+55EBCJa72JOp90zwNkhOgGEvVR5RRh9gMZ69VuxDyQ==
X-Received: by 2002:a17:902:6b01:b029:da:d295:2582 with SMTP id
 o1-20020a1709026b01b02900dad2952582mr2029260plk.14.1613121693146; 
 Fri, 12 Feb 2021 01:21:33 -0800 (PST)
Received: from localhost ([122.172.59.240])
 by smtp.gmail.com with ESMTPSA id t17sm9493836pgk.25.2021.02.12.01.21.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Feb 2021 01:21:32 -0800 (PST)
Date: Fri, 12 Feb 2021 14:51:30 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/2] staging: greybus: Fixed alignment issue in hid.c
Message-ID: <20210212092130.cxo6tuess6msf4kb@vireshk-i7>
References: <20210212081835.9497-1-pritthijit.nath@icloud.com>
 <20210212090926.ox763j3btrqfzzzj@vireshk-i7>
 <YCZHsMPgyqtRMTII@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCZHsMPgyqtRMTII@kroah.com>
User-Agent: NeoMutt/20180716-391-311a52
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, vireshk@kernel.org,
 johan@kernel.org, linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 Pritthijit Nath <pritthijit.nath@icloud.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 12-02-21, 10:17, Greg KH wrote:
> On Fri, Feb 12, 2021 at 02:39:26PM +0530, Viresh Kumar wrote:
> > On 12-02-21, 13:48, Pritthijit Nath wrote:
> > > This change fixes a checkpatch CHECK style issue for "Alignment should match
> > > open parenthesis".
> > > 
> > > Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
> > > ---
> > >  drivers/staging/greybus/hid.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/staging/greybus/hid.c b/drivers/staging/greybus/hid.c
> > > index ed706f39e87a..a56c3fb5d35a 100644
> > > --- a/drivers/staging/greybus/hid.c
> > > +++ b/drivers/staging/greybus/hid.c
> > > @@ -221,8 +221,8 @@ static void gb_hid_init_reports(struct gb_hid *ghid)
> > >  }
> > > 
> > >  static int __gb_hid_get_raw_report(struct hid_device *hid,
> > > -		unsigned char report_number, __u8 *buf, size_t count,
> > > -		unsigned char report_type)
> > > +				   unsigned char report_number, __u8 *buf, size_t count,
> > > +				   unsigned char report_type)
> > >  {
> > >  	struct gb_hid *ghid = hid->driver_data;
> > >  	int ret;
> > 
> > I can't even count the number of attempts we have seen in previous
> > years to make checkpatch --strict happy for greybus.
> > 
> > I say we make this change once and for all across greybus, so we don't
> > have to review or NAK someone afterwards.
> > 
> > Should I send a patch for this ?
> 
> Sure, but note that over time, checkpatch adds new things so there will
> always be something to change in here, until we move it out of the
> drivers/staging/ area :)

Right, though I wasn't worried about other checkpatch warning but
specially the "alignment - parenthesis" one. Everyone (specially
newbies) want to fix that everywhere :)

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
