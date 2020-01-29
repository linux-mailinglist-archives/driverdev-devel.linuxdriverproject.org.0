Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 070EE14C8DB
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 11:40:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D32B386E15;
	Wed, 29 Jan 2020 10:40:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M6YgSj8CepaW; Wed, 29 Jan 2020 10:40:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2CB8086DEB;
	Wed, 29 Jan 2020 10:40:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 49ED81BF591
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 10:40:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 464CD88162
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 10:40:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cxCmhU1MD7lP for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 10:40:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BD13788127
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 10:40:47 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id j7so1058752plt.1
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 02:40:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uzRHTQO3pKjBfSJ2Rfvh5FEUg0GL15o7FlclGpgfTy8=;
 b=mXXPkK8PdQ2HdiEfv6/GdfMm2GHaXIbrDmZE6DD7Ikgky9gFKICmwUhAGVv62RvaGo
 0LvGo8bD2iL13nEuUbdsCGON79b56e0+xUNbWjsihsxRNealZEf4eLifUd+FdnG8xFEU
 SUx8GApPVHqVlym8IjGEYT0dVck16glEdhbRyhfeJwqSh3dYI3gjRSXSV82Bz8SoG7Ul
 DySpydLaiVdTS18v9FYxMhuNkyshDxDQi6NsoB3JiXQ5ItbffCpELITTXwAYvXHZIkjm
 ydLKgbfsJa8Zgr11su/bnscBM7IAWC6hA2ewzu51NYnSJRK44W9xTqA+Tu20YUu5M12M
 x5Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uzRHTQO3pKjBfSJ2Rfvh5FEUg0GL15o7FlclGpgfTy8=;
 b=bIgoQedzkgwjTXox7p+mrbofPoRlojTx/hXld1iUyhs19bsFBOoDON/SeuKhV8DnTo
 Y0VyL55QFW1N0JH3LAXbymP9A+Dk5MDIYf+o49Ec9Q7zRRQYCXB0qqwJpD4XygfovM3z
 8GncEROrJwqPl2PxwtseV/629EOzbE2PXaavQZx0O10WK6tWTx6h2Q286FTpu9LzvttZ
 TP2AMP9lY+Esrg7/CV664TfAW5IQjgHbl9YUxXXjOS4VJGRzKf84UEJPPN9igOyC8AD2
 wDVW2RHNtxxPSHsPXZRZEhRzoNxdedmwB8Jiuarsauoi2xFkzk8bx/pVxNxqSUknJ0Sk
 Esfw==
X-Gm-Message-State: APjAAAXcjnhAeNwQVACr0dJI00KVYvtw8P6cCjACdWVNLu0NN4+H4LNZ
 LHR4t02j44xEIIsTSNtc+WM=
X-Google-Smtp-Source: APXvYqwyd5UBrtC57QGpd9Ru9Ha2G15gvVk/UC14vHvGCkou957aoLuYoIipivd+xRp9PllidBEvXQ==
X-Received: by 2002:a17:90a:2545:: with SMTP id
 j63mr10615588pje.128.1580294447327; 
 Wed, 29 Jan 2020 02:40:47 -0800 (PST)
Received: from pragat-GL553VD ([2405:205:c92f:3ccd:49ce:a9e3:28b5:cf94])
 by smtp.googlemail.com with ESMTPSA id h3sm2319678pfr.15.2020.01.29.02.40.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Jan 2020 02:40:46 -0800 (PST)
Message-ID: <287916429826dd2f14d82f9b7b6b15a9cace2734.camel@gmail.com>
Subject: Re: [PATCH 09/22] staging: exfat: Rename variable "Size" to "size"
From: Pragat Pandya <pragat.pandya@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Date: Wed, 29 Jan 2020 16:10:39 +0530
In-Reply-To: <20200127115741.GA1847@kadam>
References: <20200127101343.20415-1-pragat.pandya@gmail.com>
 <20200127101343.20415-10-pragat.pandya@gmail.com>
 <20200127115741.GA1847@kadam>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, valdis.kletnieks@vt.edu,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org, linux-fsdevel@vger.kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-01-27 at 14:57 +0300, Dan Carpenter wrote:
> On Mon, Jan 27, 2020 at 03:43:30PM +0530, Pragat Pandya wrote:
> > Change all the occurences of "Size" to "size" in exfat.
> > 
> > Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
> > ---
> >  drivers/staging/exfat/exfat.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/exfat/exfat.h
> > b/drivers/staging/exfat/exfat.h
> > index 52f314d50b91..a228350acdb4 100644
> > --- a/drivers/staging/exfat/exfat.h
> > +++ b/drivers/staging/exfat/exfat.h
> > @@ -233,7 +233,7 @@ struct date_time_t {
> >  
> >  struct part_info_t {
> >  	u32      offset;    /* start sector number of the partition */
> > -	u32      Size;      /* in sectors */
> > +	u32      size;      /* in sectors */
> >  };
> 
> We just renamed all the struct members of this without changing any
> users.  Which suggests that this is unused and can be deleted.
> 
> regards,
> dan carpenter
> 
Can I just drop this commit from this patchset and do a separate patch
to remove the unused structure?

regards,
pragat pandya

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
