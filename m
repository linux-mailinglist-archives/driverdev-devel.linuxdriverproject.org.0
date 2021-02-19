Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 445F931F565
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 08:42:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DF018747F;
	Fri, 19 Feb 2021 07:42:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LQGPWNyYtAcl; Fri, 19 Feb 2021 07:42:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C5F1F87402;
	Fri, 19 Feb 2021 07:42:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 854CA1BF321
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 07:42:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7C27286E59
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 07:42:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d1DD7Dekm7GP for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 07:42:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
 [209.85.215.175])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E418286C0F
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 07:42:45 +0000 (UTC)
Received: by mail-pg1-f175.google.com with SMTP id t26so3241943pgv.3
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 23:42:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=xuJKMqodZw6yBHjtrjDkBXosHWYiTB930PIXPwR5Klw=;
 b=GB06yo+q8+65ZQSHM3Jp5gbH+h1ewa/IEnk9yfinSlQpsIY96VA3LaEKMZ6hCXufKW
 UPjnHDVaZe2ac34qaTeAKdqeBgfN0bEl7WGZxtklql4VgN/te4e3qXwBamv2IwHz9qly
 UrqbfDWN8rpA/FHNRx1TYmQ5M9WKsBtXxd+KEyRAI1OBwnXu0PrMc3l/cEkzDGSZ3vCc
 mQahqJtXuECDSbo9my8yZmYPPSsPOic01PxAr0h42iahWB0Wa7Z5tmaTteR0l6D6LoeW
 xDoT7BrayERQKVMpeojAA2G9WdZo92UCe/mAUyT6nDcivkK63j/60gR2zpQNG5MKuUvG
 AXYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xuJKMqodZw6yBHjtrjDkBXosHWYiTB930PIXPwR5Klw=;
 b=GscJyZnZC9VPNfWHhXSyt0UPrTALi6EP8kWCsLKn26CLHovL4pM+ogPDqprehNIOQk
 RyF+qlugxRnr6QcSvhL4eAG1K74Rgi87OqU3Nu+Q1/l0vV0Cnwbri45clCg5tOoqKqNe
 PLPWQty5knviMFNt/6XNo5e3HibhqlaQzg0648Jo6XsxRtoUaT0Lwa6c7UWGloms9aio
 juxAlLQbIL1SSWh5E+KF+RUXu94+33VQPcyyEYirgBjQRkNdCkIL4empbliKcsx0014e
 i9FiVM/xfgJcYHJDZuHHdUIsE/lJkKcqVOqrglQ5QyiR58vHJG8d1lfnP9kUXgWgtrnV
 paDQ==
X-Gm-Message-State: AOAM531suStad9EQb9ItIL7Kyoi+D2d1H2R7fPod6HvTs3QceZKqhsjx
 JqRQk4r4sBOD6UOFcZcjMt8=
X-Google-Smtp-Source: ABdhPJybhlPyyJIz6HRLY9B5E2HzzH0nTkfNcm3VCrQJJE1JUV8d7RKZtZDZ6VkJia8LIbMhcqmtQQ==
X-Received: by 2002:a63:ea4b:: with SMTP id l11mr7326259pgk.61.1613720565479; 
 Thu, 18 Feb 2021 23:42:45 -0800 (PST)
Received: from atulu-nitro ([2401:4900:332d:41e0:d86c:60a5:c3:7d1c])
 by smtp.gmail.com with ESMTPSA id j2sm7371655pgq.34.2021.02.18.23.42.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Feb 2021 23:42:45 -0800 (PST)
Date: Fri, 19 Feb 2021 13:12:39 +0530
From: Atul Gopinathan <atulgopinathan@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 1/2] staging: comedi: cast function output to assigned
 variable type
Message-ID: <20210219074239.GA4525@atulu-nitro>
References: <20210218084404.16591-1-atulgopinathan@gmail.com>
 <8f73b7a1-02dd-32ef-8115-ad0f38868692@mev.co.uk>
 <20210218104755.GA7571@atulu-nitro> <YC5bsXa+1KSuIh+v@kroah.com>
 <20210218125220.GA19456@atulu-nitro> <20210218155159.GL2087@kadam>
 <20210218164128.GA9289@atulu-nitro> <20210219065514.GN2222@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219065514.GN2222@kadam>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 19, 2021 at 09:55:14AM +0300, Dan Carpenter wrote:
> No problem.  These days I have fibre to my house, but I still remember
> trying to clone the kernel when I could only buy 20MB of data at a
> time.  :P

Whoaa, that's tough! Respect to you for still trying to contribute
to the kernel. Hope no one gets such a situation. :D

Regards,
Atul
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
