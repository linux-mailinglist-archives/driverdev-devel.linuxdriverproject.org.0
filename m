Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADD5EB46D
	for <lists+driverdev-devel@lfdr.de>; Thu, 31 Oct 2019 17:04:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D80CF22FD5;
	Thu, 31 Oct 2019 16:04:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rEE5tmq4CMuG; Thu, 31 Oct 2019 16:04:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4DAB823244;
	Thu, 31 Oct 2019 16:04:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A997F1BF424
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 16:04:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A06A7882A0
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 16:04:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TRBV-ZzYcQUt for <devel@linuxdriverproject.org>;
 Thu, 31 Oct 2019 16:04:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 745D788182
 for <devel@driverdev.osuosl.org>; Thu, 31 Oct 2019 16:04:03 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id c12so1954284wml.4
 for <devel@driverdev.osuosl.org>; Thu, 31 Oct 2019 09:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JAUaCVnXVTPu4BHWIU8/SeyN5F4/2lpyjJPrdXmye2A=;
 b=aIr27p3xRf3wx/8Ig/NxHG/TnRXX42pulbg7LBm9id8owkQ9UVVxSghoKWCMRFf1AB
 o34uMEp06rWCI0sws9XQeZrViu6n+zyLSWiA1kpH2lwz6y6HfXhOyuWGj65UHFHhZmn7
 k9quYkcXb1UwUoYAxTXpkzq1VvPXwJoIBGjaU0CkqD3mtZYYN7PiS2KoeKyuN7bRYjMP
 mL7ouFdyILHIKPhg9Kca+0aQiQMi948radfDyRVneQoUGNUHUCEhwb9MPpQbbJku9gI8
 ugFAv5LartJijjpVp+p0P4prHxQLUHBf24tZO1KaFEP5uqzr6gm57bjgUQsSy6TIQaAr
 W9DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JAUaCVnXVTPu4BHWIU8/SeyN5F4/2lpyjJPrdXmye2A=;
 b=FWI0iT4PI/W8TQI6ec7EgtgW14va6jOZmCBwXaj+YLqmHO3/kOAbsGKFNdQq72q2Or
 TDHIJSanvAdKIQ0wo3oU4SJoiVsQfB0ozspowtsi2EBzJdJAuf2los0MnVUMur4i5Fcm
 f3l7L06I+yUxMczg3MUMTeeVSa3YRH06UqkqCfoUYKNum1hVm6x3b7C2gCUHmSsT+x65
 a8m8GBJdfy36bC7Pux3EsptVxBh1yWE/fWx4Tht4ATD7WWrm7YlA9PG6JPtJdq4tx+yh
 kAlBOyuyDS6jLDX7LsEDrpGbxcgjYkFpziVOUY88ufLePSL1i4m1qeU2m/p1em0MG7qC
 paUg==
X-Gm-Message-State: APjAAAXoRLvS8keinY3YE3EiXqKEwM8Q5375UV990rXlmeNawgYqy+Ok
 OLzYgWKMCs211xx6ePxvNds=
X-Google-Smtp-Source: APXvYqwebx/lwR5sk//7d0OTnx/JnYZerIAInuf8LuhOZHdlp+WjeA/S155x0lP90Xh1d2q21GhlvQ==
X-Received: by 2002:a7b:c84b:: with SMTP id c11mr964031wml.158.1572537841801; 
 Thu, 31 Oct 2019 09:04:01 -0700 (PDT)
Received: from localhost ([92.177.95.83])
 by smtp.gmail.com with ESMTPSA id c14sm4234480wru.24.2019.10.31.09.04.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 09:04:01 -0700 (PDT)
Date: Thu, 31 Oct 2019 17:03:56 +0100
From: Roi Martin <jroi.martin@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 6/6] staging: exfat: replace kmalloc with kmalloc_array
Message-ID: <20191031160356.GB6924@miniwopr.localdomain>
References: <20191031123139.32361-1-jroi.martin@gmail.com>
 <20191031132503.GD1705@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031132503.GD1705@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 valdis.kletnieks@vt.edu, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> > diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
> > index f71235c6a338..f4f82aecc05d 100644
> > --- a/drivers/staging/exfat/exfat_core.c
> > +++ b/drivers/staging/exfat/exfat_core.c
> > @@ -713,8 +713,8 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
> >  
> >  	u32 checksum = 0;
> >  
> > -	upcase_table = p_fs->vol_utbl = kmalloc(UTBL_COL_COUNT * sizeof(u16 *),
> > -						GFP_KERNEL);
> > +	upcase_table = kmalloc_array(UTBL_COL_COUNT, sizeof(u16 *), GFP_KERNEL);
> > +	p_fs->vol_utbl = upcase_table;
> 
> This patch is fine, but one idea for future patches is that you could
> remove the "upcase_table" variable and use "p_fs->vol_utbl" everywhere
> instead.

Thanks for the suggestion.

This is my first contribution and I tried to introduce the minimum
number of changes necessary to fix the issues reported by checkpatch.pl.
Also, I'm still immersed in getting familiar with the contribution
process and the code.

Do you think it makes sense to include this change in a future patch
series along with other refactoring? Or, should I modify this patch?

By the way, upcase_table is sometimes accessed in quite complex ways.
For instance:

	upcase_table[col_index][get_row_index(index)] = uni;

Where having an intermediate variable instead of using the struct field
directly seems to improve readability a bit. Otherwise:

	p_fs->vol_utbl[col_index][get_row_index(index)] = uni;

I assume, in cases like this, from a coding style perspective, the
following approach is preferred:

	row_index = get_row_index(index);
	p_fs->vol_utbl[col_index][row_index] = uni;

Is that correct?

Regards,

	Roi Martin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
