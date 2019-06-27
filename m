Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3575058972
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 20:05:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 301FB88042;
	Thu, 27 Jun 2019 18:05:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id axKYxs3NF-2s; Thu, 27 Jun 2019 18:05:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B665987EC5;
	Thu, 27 Jun 2019 18:05:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 137821BF2F8
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:05:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 10CD287F79
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:05:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yvjoFCRfb3R8 for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 18:05:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3F54D87EC5
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 18:05:51 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id d126so1623423pfd.2
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 11:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7ZFHIM+9ACuJTE5JeAEtpKhLckRWZf8AG+zsqIufowA=;
 b=FYhogf0z45V2UHOffa575V4s88hm4x6/QA3IBteH61ORTHx68RMuHYhejlt2KqpXLw
 iszYSJgjoc+J8MNYjUEC5YGeoxp+o4jGUR1m8gIaCM8lK6KSPkceOLezFofUr0v66dIt
 dkQcE9FNnWDNOMyGGNFgwibVXu67jc5S4KQ1XKoOQ3Xjt5VMGhSr7V0L7K6BM609NEBy
 t9F+YJ5isjwswLuThvLZb8FS0LWIHU2LbdO701hCkji6tll5R8bcD+tSf0CoVu+yRvFg
 kTFCVCfoHb1Irfyt6oCb0wvnqKoDLv4uUOsihyli2xOk6RFf6C94ABFMciaXBJ8u5xmL
 q1nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7ZFHIM+9ACuJTE5JeAEtpKhLckRWZf8AG+zsqIufowA=;
 b=jfkjzx3Ho22DeJ4SKNuvzt7/2Vh9dKRxAx9pZmXnI1xkrlhlhM4+0wv8kKbp3wtmog
 0dr7os89v6eYtEvgZ6lIz4v+tCH0TXWc97DXpxYzNsgTK230lDyedCYnHxP0EJaPR783
 cbzOfGLEikGdLBvkaoUsPp3RtR/nRVlLGCCbTBXfUni47DH94VoyHCabiRf3DgL/+H0C
 /gNXQYq4O0yR+7iXFa5wxYn/FrBy4nySCZqotSkItls/35/BaTMHz45nT8BtaRTl5Ea/
 R3xk6aThQlysPItknHOhaDf9yHgvLqZYRqCwbB4MBHsl0BbbER8cgjwT6Tu9MQqwYc0f
 7JvA==
X-Gm-Message-State: APjAAAU4uueSQLpdO4XLdTq7ewGTuYw5r+sqTyjJSlbO/140uD7Cl2Ol
 /3Uy/XtOjVwd6DHNGElq0y6SZZGk
X-Google-Smtp-Source: APXvYqzox8DkrIK20YIRK4bK4hjXsHcTPAOhqjwZBqOsQJGVAhHLTvpzy953y39BuSm2jry+rlP2HA==
X-Received: by 2002:a17:90a:2666:: with SMTP id
 l93mr7511494pje.16.1561658750919; 
 Thu, 27 Jun 2019 11:05:50 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id br18sm5836565pjb.20.2019.06.27.11.05.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 11:05:50 -0700 (PDT)
Date: Thu, 27 Jun 2019 23:35:46 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: rtl8723bs: hal: sdio_halinit: Remove set but
 unused varilable pHalData
Message-ID: <20190627180546.GA3240@hari-Inspiron-1545>
References: <20190626174459.GA8539@hari-Inspiron-1545>
 <20190627063835.GH28859@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627063835.GH28859@kadam>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 27, 2019 at 09:38:35AM +0300, Dan Carpenter wrote:
> On Wed, Jun 26, 2019 at 11:14:59PM +0530, Hariprasad Kelam wrote:
> > @@ -1433,7 +1430,6 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
> >  #endif
> >  #endif
> >  
> > -	pHalData = GET_HAL_DATA(padapter);
> >  
> >  	switch (variable) {
> 
> We need to delete one of those blank lines or it introduces a new
> checkpatch warning.
>
Yes thanks for correcting this .  Will resend the patch.

Thanks,
Hariprasad k

> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
