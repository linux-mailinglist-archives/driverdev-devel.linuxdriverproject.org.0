Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B77120C29A
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 17:01:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C0488851B;
	Sat, 27 Jun 2020 15:01:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id upCgZqO4Jb46; Sat, 27 Jun 2020 15:01:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A231781DC9;
	Sat, 27 Jun 2020 15:01:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F31A1BF424
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 15:01:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2B94C87D6E
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 15:01:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KZk5JJUfkYDO for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 15:01:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E846C87A22
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 15:01:50 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id y18so5397380plr.4
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 08:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9lher+rQxC0kRrcoezVIymaqZSTGLdetiTQ54P1L/Qc=;
 b=nlMVQLA0jQBARLHqP/GFmOdd7QX7HfxH5YBnecu+434yb/XWokEqmSaKLQfaQcamSB
 zuQBtk54DIYk9Ip2JCMSvjdpb8dFAZt1Kgmt9B6tsJ/TnQZoK0yUUxxpDKXNEmzK/bXd
 aylGDdU46wZK0GF8aoHcYHX5SWRE6EVYjXVHlyzMhzWv143Wp7rd9HAJbCkpWilZ5KE3
 RWhaCLT4OG/YmTTUWOCi58DWrHh47OvmF4CHMGvKNnc1fvfueTJLzSWqyaOmxv4YffWr
 J502vMRa2YH5d1/k1hfhXmLvsSjKeZViHgKMMdHqceaDs6QzVpQwYelzu9rPW/nQlYTi
 8zmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9lher+rQxC0kRrcoezVIymaqZSTGLdetiTQ54P1L/Qc=;
 b=W49rXnUHwP4ydWew38xsrOaRAsujxl+gzh9aod88ZkHyX2q6Rj2EKjo6t1Ocxovy41
 CDAQevDoC5SSX2XWNAZyFUoMgQXnuoxHJ6pO8yWJ6OWghM3L6irdQCTLFIvtONi8JMOd
 ajfWAW4XTIy9fKzn+CMLAPOWSK1WwyXq/+4HF55+ha23g5n9Gb6YpEV9/fEvJB0CUPts
 qQ2DURHyvmntGEx43JOiC6i+qdTz/6aP31HOpobNxKkGA6yKLhuDQs2bvUNWVnzgbJIl
 oTd7/b3TqH2iY+6b5PuSaDb8Q9kGXSoSu+5x4ys5If2l3jYbra7/qL+b6ciFxqrhZd5X
 LSQA==
X-Gm-Message-State: AOAM533KLcbvvibM3gzoBL4bdgOKF6/BOTdTqFeMq3H1Xn4p5SbFqt0u
 ZSmJ/JKDq9t+ldMWizp5FJE=
X-Google-Smtp-Source: ABdhPJw9oECpaLZ/lIFVcCCPrnE7fCPYaId7ioMgiD3ZzwIUDxtHteJpqVOUN8uK/vDAJKSZMUcfdQ==
X-Received: by 2002:a17:902:b48f:: with SMTP id
 y15mr6823297plr.284.1593270110619; 
 Sat, 27 Jun 2020 08:01:50 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id 66sm12902375pfd.93.2020.06.27.08.01.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 08:01:50 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Sat, 27 Jun 2020 23:01:42 +0800
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/4] fix trailing */ in block comment
Message-ID: <20200627150142.nukckb2ezyxiuemm@Rk>
References: <20200627101447.167370-1-coiby.xu@gmail.com>
 <20200627101447.167370-2-coiby.xu@gmail.com>
 <20200627104708.GA1581263@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200627104708.GA1581263@kroah.com>
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, joe@perches.com,
 dan.carpenter@oracle.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jun 27, 2020 at 12:47:08PM +0200, Greg Kroah-Hartman wrote:
>On Sat, Jun 27, 2020 at 06:14:44PM +0800, Coiby Xu wrote:
>> Remove trailing "*/" in block comments.
>>
>> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
>
>The subject lines of all of your patches should match other patches for
>this driver.  It should look like "staging: qlge: ..."
>
>Please fix up and resend a v2 of this series.
>
>thanks,
>
>greg k-h

Thank you for pointing out this issue!

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
