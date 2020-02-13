Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B2015CB0A
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Feb 2020 20:17:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 08F1C861C8;
	Thu, 13 Feb 2020 19:17:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M2VXJLWFXs1C; Thu, 13 Feb 2020 19:17:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B98D6861C7;
	Thu, 13 Feb 2020 19:17:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 851411BF3B1
 for <devel@linuxdriverproject.org>; Thu, 13 Feb 2020 19:17:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8191D861C7
 for <devel@linuxdriverproject.org>; Thu, 13 Feb 2020 19:17:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iUNijZgsdBlF for <devel@linuxdriverproject.org>;
 Thu, 13 Feb 2020 19:17:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
 [209.85.215.181])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3EEC58362D
 for <devel@driverdev.osuosl.org>; Thu, 13 Feb 2020 19:17:01 +0000 (UTC)
Received: by mail-pg1-f181.google.com with SMTP id 70so3611956pgf.8
 for <devel@driverdev.osuosl.org>; Thu, 13 Feb 2020 11:17:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=fhZFg8LTdvZwHsW3ZofVRs07iAKz9GzQpl7hqklnVdo=;
 b=WD21nl2sCcyIyrvgV7IH4R5vJGA2IezVE9insgrlrYtwiNwhFoils+MnT6eM7kNs4g
 5bDAVtzY33TE2Dl53s/TJQ/S/OhkzPA7Jv9TZ5heQNjFAqm6GZ0Kr0DjD2E2HVxWWYm0
 gEoJ6AVwbo0WPeXyKCqfzpJjcxnwCh957sAJXEd8Fn0CSWuw8n1MK+yWqu9/7ZCLzSb1
 zdH2LZFJonFyPh2qAojMqCjobhEJmOZMGitftTsiugvQGrfLfA/bJ8jQoaKLxdbe6fb6
 5qjb01IdzxQ432NzQ8rRIvIWqTZ2w93o0EshP58ftGjurROeYbW9OxocBraqziIE3qg2
 W3qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=fhZFg8LTdvZwHsW3ZofVRs07iAKz9GzQpl7hqklnVdo=;
 b=UxXRCfPvG3Mneyo5h4dmuCoSPG75iWYOTn+bkHVnVC0QoGqkQt0KpQ0Mb83JQnYBuy
 gFr1b7UxCi0d+39qYaC7sXk0LNW7y6e/sgyrm820ns45mc90srqEJoOdOYieKhrj2/o/
 E/7Seih9Flx1CKBptGEdcFeMWGNk8+FPKqbQxqpptTD41ASQmYwa1IsO6H8RcZovDOvN
 pp9IhNOz3A5wdZHMc1LagywL+fCh7QZ3tZ+Q1NR99jLVUtgwssYya1cR/faSXlcPYj0u
 AE6MY/2DYBO4+8zBD/bWZXte/q12NvHVvbqqqxCu2Ly/x6UneXR2UsAYIIEBBLJ9o3X/
 NzFQ==
X-Gm-Message-State: APjAAAWgbEAd8AW6EqrGK8TBZV6dEMavs1A6mXdpzXoemT3stpuogHRT
 2Xx0Jeset4Y7KC/4qIsynauBOO8ISwApXW8y
X-Google-Smtp-Source: APXvYqySrOnTGtY7+9DITehe3Meo7s084GaA+6N+nsJP5kacBuLgycbMeZZYgExDf3vDCEP9ZAH+xQ==
X-Received: by 2002:a63:520a:: with SMTP id g10mr17908361pgb.298.1581619930792; 
 Thu, 13 Feb 2020 10:52:10 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.176])
 by smtp.gmail.com with ESMTPSA id c11sm3982890pfo.170.2020.02.13.10.52.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Feb 2020 10:52:10 -0800 (PST)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Fri, 14 Feb 2020 00:22:05 +0530
To: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: staging: board: disabled driver
Message-ID: <20200213185205.GA26906@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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

I made some changes in board.h and other files under board to remove the MACRO using conditions. I did git log --oneline "file path" to get the logs, but turned out the driver was disabled. Hence on seeing it's KConfig file I found STAGING_BOARd and searched it in device drivers in menuconfig. I found that OF_ADDRESS-> OF-> X86_INTEL_CE were disabled as well. But I couldn't find X86_INTEL_CE under the device drivers.What should I do about it? Is there a way around or should I look at other drivers than board?
Thanks for your time!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
