Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC7014C927
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 11:58:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF8D086DFC;
	Wed, 29 Jan 2020 10:58:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h24fVNLXZMHq; Wed, 29 Jan 2020 10:58:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CEC6686DD6;
	Wed, 29 Jan 2020 10:58:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E8731BF591
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 10:58:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4B0D386DCA
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 10:58:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fcy6w5oOPHDM for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 10:58:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EDA6086DD6
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 10:58:45 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id r11so8659706pgf.1
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 02:58:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DnkKDo9E340IryD18Mp59JG+Dgi6azYeZD8jX7vqjKk=;
 b=h0UpekPFyzxi+v1iRWR5YC2RvbXSeusjVTn7wf/YaVrrybMkP8jgwBIRDMsmEUe9kk
 RRDUGeYBXoOz/BeWYSBwkgkM5N/Ly2zZxXca5gZASIy9hnC0Dy2gbzg4MZ+XSs2P+RaK
 jhUXL3VpHSnpsBrDYauaxbzq9HxJTGylyWQRm8AZ0ew5wVONgG+e87t8kw7PoxPfVYYQ
 u2B3PVH0mejnI7yJ+FYFEQRJNRS9gczuf4FtQV3X2WN2P+qUE9lvf1dU5Us9UWHUr3bP
 L+Jt0n98Fz+Wky1b/3ule6nHDWXXM+YmMNG88IlCwffRA+rMTY0hitEm+m59qiA4p2A1
 KlAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DnkKDo9E340IryD18Mp59JG+Dgi6azYeZD8jX7vqjKk=;
 b=TGX2N8iIZRT+GYNnb7zgAqueyAz3LlFzjea2azk/MHQj4hLmWUq1Pu4f4xVkHyn+Tf
 mqHeVadJSF2KpEujtw3CzwPOJQEslRjWwAwbJyCyCumTfKL8+D9M3fosTstJrJCYM/7I
 fgGN9KYO48tMMimgaBsuKiGKTWr+4TaTg6SmECt290J9vOjRsBt19d2JvhxK5fMqdyBT
 yrUQdmdidM4yd2DKvfFPj3NRizAzsr5ApJIkNORmNXRDct6odgHA7/LwuzJ/emqrZQtH
 0rUi2r1KztShz4Wimt0VathqIcSnvFGksPJTlETaGPNNUsK9KgBNKB+elUf/iz0pSS7S
 X52Q==
X-Gm-Message-State: APjAAAWkJA2itBv8MlYpR9VIBAT0jTk+h1C3fzyZp7eo7il6wSO3hVhl
 iT4MDWekERO6IQva7ikhGt8=
X-Google-Smtp-Source: APXvYqzZIzh+PS0Ileykyhf/P+2UFPNgdQpMZqkFXaJKSAhkm311VSj7Fq+pMup+H+KY4PzIzZsfww==
X-Received: by 2002:a62:1c88:: with SMTP id c130mr8768170pfc.195.1580295525577; 
 Wed, 29 Jan 2020 02:58:45 -0800 (PST)
Received: from pragat-GL553VD ([2405:205:c92f:3ccd:49ce:a9e3:28b5:cf94])
 by smtp.googlemail.com with ESMTPSA id y75sm2384448pfb.116.2020.01.29.02.58.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Jan 2020 02:58:44 -0800 (PST)
Message-ID: <0eac2eebe812a42fd447edfeff3d2791276b655a.camel@gmail.com>
Subject: Re: [PATCH 09/22] staging: exfat: Rename variable "Size" to "size"
From: Pragat Pandya <pragat.pandya@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Date: Wed, 29 Jan 2020 16:28:37 +0530
In-Reply-To: <20200129105012.GA3884393@kroah.com>
References: <20200127101343.20415-1-pragat.pandya@gmail.com>
 <20200127101343.20415-10-pragat.pandya@gmail.com>
 <20200127115741.GA1847@kadam>
 <287916429826dd2f14d82f9b7b6b15a9cace2734.camel@gmail.com>
 <20200129105012.GA3884393@kroah.com>
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
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org,
 linux-fsdevel@vger.kernel.org, linux-kernel-mentees@lists.linuxfoundation.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2020-01-29 at 11:50 +0100, Greg KH wrote:
> On Wed, Jan 29, 2020 at 04:10:39PM +0530, Pragat Pandya wrote:
> > On Mon, 2020-01-27 at 14:57 +0300, Dan Carpenter wrote:
> > > On Mon, Jan 27, 2020 at 03:43:30PM +0530, Pragat Pandya wrote:
> > > > Change all the occurences of "Size" to "size" in exfat.
> > > > 
> > > > Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
> > > > ---
> > > >  drivers/staging/exfat/exfat.h | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/exfat/exfat.h
> > > > b/drivers/staging/exfat/exfat.h
> > > > index 52f314d50b91..a228350acdb4 100644
> > > > --- a/drivers/staging/exfat/exfat.h
> > > > +++ b/drivers/staging/exfat/exfat.h
> > > > @@ -233,7 +233,7 @@ struct date_time_t {
> > > >  
> > > >  struct part_info_t {
> > > >  	u32      offset;    /* start sector number of the
> > > > partition */
> > > > -	u32      Size;      /* in sectors */
> > > > +	u32      size;      /* in sectors */
> > > >  };
> > > 
> > > We just renamed all the struct members of this without changing
> > > any
> > > users.  Which suggests that this is unused and can be deleted.
> > > 
> > > regards,
> > > dan carpenter
> > > 
> > 
> > Can I just drop this commit from this patchset and do a separate
> > patch
> > to remove the unused structure?
> 
> Drop this one, and the other ones that touch this structure, and do a
> separate patch.  This series needs fixing up anyway, I can't take it
> as-is.
> 
> thanks,
> 
> greg k-h

Ok, will do that.

Regards,
pragat pandya

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
