Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 630F95FFC0
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jul 2019 05:33:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1417388031;
	Fri,  5 Jul 2019 03:33:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IwzPIDgGJrY6; Fri,  5 Jul 2019 03:33:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91EA787EDB;
	Fri,  5 Jul 2019 03:33:02 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 72FF81BF302
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 03:33:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7039485F45
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 03:33:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hdRn8twrIsVu
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 03:32:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E385885DCF
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 03:32:58 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id n9so8386284wru.0
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 04 Jul 2019 20:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZbzWb2n4jnjW+rVN3Fj3uLfpeARbWrKbjtUAWj4S5Wc=;
 b=JRDgVCafpeVvwlM+cDAzL8f1YpFnX7tXq+hmZDIzyT1l3BDMZnJgeqyF077Gc/AG8P
 WcmK62WumuFgw6ajfi5oKpugEY+MwK7TZgOZLAUMy1WJvLRpdNfgXr6n/0tvGeTBxNLh
 SDzNnBY6aIgtSURdAqqOlj5R5+jpFPNeJpTNNdNBhESsAbJMTax6P2TNV9Cq5kiZWVgO
 CzcQIn+2XuWfXZKy7xltI9MupnIypV1xozCzGZJEHrlNQh1+0CAngF6EQ3edIU8plKGl
 K5iPAezeXpRMygEHs0bikD+pMNn4IEXuoz3c62n0Rj+1/Cy5QKs1t/btSy4/hZYALMDM
 E/8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZbzWb2n4jnjW+rVN3Fj3uLfpeARbWrKbjtUAWj4S5Wc=;
 b=VkYJDoEHFmtaKgkeUm++ca3R0pVQmW497VcGSL2St4HPJmVwI5Ig1P0j9fRpSFWIK/
 Ywao3ikhihxrFTDRl1vyzcmfOggwOip03x64XxxMoPa8ZqeboZinCts2HJcZxKU6NHIU
 bJMfpicwv4KsO7uiRr6HR159rFGjeKPRrG7ghq3HgxR49XTYt0J4WCIte5p/pMbuTDG3
 bN7D44A0OyimwakTRPDPquy/AmDCm3amBS1V3Znm5Ttoq8EbUtXRnyJ2PRx1N+65v3D0
 aXD4ROjSwQ7PB5xyKstKDNGlb9M1DEnNjOus058ENzMiGFwampCGWW5CoKVvq6Hc2YB4
 ZaIQ==
X-Gm-Message-State: APjAAAVC7OXStjA5hRQiNyCDDq/ecZV+Jee3+Ww6Yvmq3/XJ0E8eMnO5
 xz99j+Cjud+bcNCTnyr9h/CdrPEKGNT6wZ5CCKU=
X-Google-Smtp-Source: APXvYqx5dzY55oNfe9gKNe2+orVtFnycfmunqdoKlj/mHlEGzqLDKK8GBUUEj1SLarG6UB9NsMFOg7dpnWf5EGZv03Q=
X-Received: by 2002:adf:aacf:: with SMTP id i15mr1259479wrc.124.1562297577408; 
 Thu, 04 Jul 2019 20:32:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190705025055.GA7037@ares>
In-Reply-To: <20190705025055.GA7037@ares>
From: Amit Kumar <free.amit.kumar@gmail.com>
Date: Fri, 5 Jul 2019 09:02:45 +0530
Message-ID: <CAPTh4OuL5k8YAbkcnDLQQ4YRFkeaYZ6PwqWPisLtST7oz2+haQ@mail.gmail.com>
Subject: Re: [OSSNA] Intro to kernel hacking tutorial
To: "Tobin C. Harding" <me@tobin.cc>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Kernelnewbies <kernelnewbies@kernelnewbies.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 5, 2019 at 8:21 AM Tobin C. Harding <me@tobin.cc> wrote:
>
> Hi,
>
> I am doing a tutorial at OSSNA in San Diego on getting into kernel
> hacking.  I'm only a couple of years deep into kernel hacking so I
> wanted to reach out to those more experienced than myself (and those
> less experienced).
>
> Is there any thing that you would really like to see covered in this
> tutorial?
>
> If you are a grey beard is there anything that you have been lamenting
> us newbies not knowing/doing?
>
> If you are a newbie is there anything that you are struggling with that
> you really want to learn?
Thank you.
Where can I find your tutorial?

Regards,
Amit Kumar

> Current format/content: the tutorial will attempt to bridge the gap in
> the learning process between the 'first patch' page on kernelnewbies.org
> wiki and being 'comfortable' patching the kernel via LKML.  Outcome will
> (hopefully) be a small patch set into drivers/staging/.  (Don't worry
> Greg only one group got to this stage last time, you won't get flooded
> with patches :)
>
> Thanks,
> Tobin.
>
> _______________________________________________
> Kernelnewbies mailing list
> Kernelnewbies@kernelnewbies.org
> https://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
