Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B636EB068
	for <lists+driverdev-devel@lfdr.de>; Thu, 31 Oct 2019 13:38:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E9152228E8;
	Thu, 31 Oct 2019 12:38:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UT5S7eAIfLBU; Thu, 31 Oct 2019 12:38:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DB35222889;
	Thu, 31 Oct 2019 12:38:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 524681BF2EB
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 12:38:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 44D6F8771B
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 12:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A6XJDPFDJ328 for <devel@linuxdriverproject.org>;
 Thu, 31 Oct 2019 12:38:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 67F4087726
 for <devel@driverdev.osuosl.org>; Thu, 31 Oct 2019 12:38:40 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id t26so1664182wmi.4
 for <devel@driverdev.osuosl.org>; Thu, 31 Oct 2019 05:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=uhoxQTqJS7TN8UEiHDJUbummgXcJZdDKj/YEdaqojMA=;
 b=sZixWELQR5cQZ8lnCI3d78Zr4QlSClG+ptOiYGwAf+PKvZsCDCAbPcr9vDxEfUG7tl
 wPbQUw+8FmP7IRyrt/96p3cLR/dOCT8xcf0s7QFTnwXDrUShJBp5m1HxNaVeOqJlphBt
 L1acY9lKZB/4OakIuAlFXE6Zr03/RIaRGYg/mxZmQv43fj7yq7cIR8oUbGlSwnIvbJgg
 ntAMXH/dbr4hZxW5lHu7vw5mRTCJN3QIuJOdpwTQzHfxrXCbIrLKEkaz15TudlW0/ynd
 ouNuxHgsEjl/Wa0k2OXKSIHnymMAooX7vbbyD9lreDZfA1QT0BbRz9iD/N3QXIXOiFu4
 qYyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uhoxQTqJS7TN8UEiHDJUbummgXcJZdDKj/YEdaqojMA=;
 b=eGcgR+tJd9cscFzqVLUgwvgIFbyiwNkHak5Vvh0NyWuoQ94kf296q9hRLBlRS0gHpQ
 ZtRgBStUL3BP+XcdRl8u82/mAF/tIswX/GzgaebDCjgNRxVMESv/5F+/bNPHvIZ9r9oC
 Pom6dtzWWgUCfJkLb/neFTpvSsoctWefrkk9ZlVox2XakQePHBIpeuiEMHewRmS8+Wy8
 C8s0tdgwp3k4Nn6bn2d8O4VlFll8ffSEVjReBXLrxi94PLlivNCb81LjGnkDFIqEKw2b
 nBm7zxormR/zULdjAgid30Xuq2GLx8AHtc7xPKUDO2prZ+T6upM1xFmpyItsU+p03vAH
 Fq1g==
X-Gm-Message-State: APjAAAWegHoufmQv1bqvOGdD/nKUxeHh+yxRMY9RLGS03kwa8yygvRQa
 Fz/G3r4VIHzymfJ/gM0xsrGUHYlWvk0=
X-Google-Smtp-Source: APXvYqyobm4skG4Pd0DzqgekVRXwjSGHQx3GvfNg+Ad/meMFuELyqVIlhbD/fD9yrrI26HrwDMUBug==
X-Received: by 2002:a1c:7ec2:: with SMTP id z185mr4767560wmc.69.1572525518925; 
 Thu, 31 Oct 2019 05:38:38 -0700 (PDT)
Received: from localhost ([92.177.95.83])
 by smtp.gmail.com with ESMTPSA id u7sm4429632wre.59.2019.10.31.05.38.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 05:38:38 -0700 (PDT)
Date: Thu, 31 Oct 2019 13:38:36 +0100
From: Roi Martin <jroi.martin@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 6/6] staging: exfat: replace kmalloc with kmalloc_array
Message-ID: <20191031123836.GA6924@miniwopr.localdomain>
References: <20191030010328.10203-1-jroi.martin@gmail.com>
 <20191030010328.10203-7-jroi.martin@gmail.com>
 <20191030094222.GA678631@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030094222.GA678631@kroah.com>
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> This patch failed to apply.  Please fix it up and resend it as a new
> version.

I have rebased the patch against the branch "staging-testing" of the
tree:

https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git

And sent the new version.

Thanks,

	Roi Martin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
