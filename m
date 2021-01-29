Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C81883086F6
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 09:22:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3AA04872ED;
	Fri, 29 Jan 2021 08:22:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UdpCi75mxP52; Fri, 29 Jan 2021 08:22:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9FCB4871D4;
	Fri, 29 Jan 2021 08:22:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE1641BF5A2
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 08:22:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BA48D871D4
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 08:22:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B38ml-4r2O8m for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 08:22:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1F6B6871CA
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 08:22:00 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id e19so5762534pfh.6
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 00:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=VTStB/D1l2KpJzIcQ7xfwV5RJqlfXriAvZbVTnO0ONQ=;
 b=kiEHo8UKnJ2qx6DJQtnIecFVaGTuwbSgEWCqYEOcjxHlGPzDj7lxr7FQ2m+oqh7zlM
 S7N1a14x2kjVpUUe6gM7r2Tn/VHwlpCn/doF7uXzJUC1/7lyYcXg731CtZQGNCzP63vw
 dRcXVkBty4kI8V55cNasAk0x9QJijAitqfq4RA9BfeOWdPK0llgnTsiPBKCCAqKc66e0
 YadZs+yjha3Nf2KKBsCOz1455r+vybUgGOj9FNmOi3MGOqq3CNJnYelLLpCHJukAVd90
 41elzFkle+KzhXC1LQl37B/3+mU8GJnx/d50m636MsM/sHM562rteoGiFsrrid82YOh7
 v7Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VTStB/D1l2KpJzIcQ7xfwV5RJqlfXriAvZbVTnO0ONQ=;
 b=nLsQpx2b4aQBn8VYy2nW6gk8t5PrmlmZIM6Mm1p0j/68p5QvCkqSegXKMFwsh4Rjar
 fsXEIKbQG0hcPnfmFYhBM2HJby2O8g/i77twxKDrJqQwE+EvAe8od3vzsGJVY3l0iTIq
 8U/VTYZzqJ/ANJaUfKImatiBQzFF9jpuoruWaPfcPt1MdXZRLOLJs8qB1dEa2aw6lGAz
 tQ6oTq0IsKc9owScW4XAj7FX1U5Db16xKWLGkpfmQ9/fYeKWk4RIwZkow84BOdqRjmPd
 3P/FogidQhkVBHdnCZ2/vE3Ib54gV75CMrxXISkMh3YJTVHtOKU3Kkh+kVi7GNtrIXhv
 TcuQ==
X-Gm-Message-State: AOAM533ot6QlCQaZ6vRy8raBH8l20LA+DhkBMwrX47GFeb9lXYxsCPlR
 CL7BENLie04pBF0x4M55Hf4=
X-Google-Smtp-Source: ABdhPJx++cbNfyOitKasBMBgGFUwtjfsLZDrRcIaUlXKc0HyBGU+78paSff/h+kNFXXhbHmVxFfRAg==
X-Received: by 2002:a62:3485:0:b029:1b7:d521:29e9 with SMTP id
 b127-20020a6234850000b02901b7d52129e9mr3421147pfa.81.1611908519682; 
 Fri, 29 Jan 2021 00:21:59 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:bf74:2d8d:c90d:3335:2e72])
 by smtp.gmail.com with ESMTPSA id w66sm7895301pfd.48.2021.01.29.00.21.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Jan 2021 00:21:59 -0800 (PST)
Date: Fri, 29 Jan 2021 13:51:55 +0530
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: qlge/qlge_ethtool.c: strlcpy -> strscpy
Message-ID: <20210129082155.2ob4kokjdjbutdqm@apollo>
References: <20210129064522.97548-1-memxor@gmail.com>
 <YBPBoajKXbKhI7ji@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YBPBoajKXbKhI7ji@kroah.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

[Forgot to reply-all]

On 0129, Greg Kroah-Hartman wrote:
> On Fri, Jan 29, 2021 at 12:15:23PM +0530, Kumar Kartikeya Dwivedi wrote:
> > Fixes checkpatch warnings for usage of strlcpy.
> 
> What warning would that be?
> 

5dbdb2d87c294401a22e6a6002f08ebc9fbea38b

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5dbdb2d87c294401a22e6a6002f08ebc9fbea38b

> And if we could just search/replace for this, why hasn't that already
> happened for the whole tree?
>

I think that's because it is hard to tell whether truncation is expected at the
call site or not, so each change needs to be audited manually (to check the
return value or not). In cases where it's just a safe strcpy, strscpy is a
relatively better choice (due to not reading the entire source string).

> thanks,
> 
> greg k-h

--
Kartikeya
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
