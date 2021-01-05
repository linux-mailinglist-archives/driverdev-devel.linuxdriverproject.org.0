Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8432EB257
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Jan 2021 19:19:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA4018723E;
	Tue,  5 Jan 2021 18:19:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3mW5QcJE27lY; Tue,  5 Jan 2021 18:19:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3FCD587220;
	Tue,  5 Jan 2021 18:19:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9D65E1BF330
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 18:19:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 955B5848AB
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 18:19:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aU2CMeaPgA7M for <devel@linuxdriverproject.org>;
 Tue,  5 Jan 2021 18:19:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2CF748484B
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 18:19:16 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8AE6022D5B
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 18:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1609870755;
 bh=2Vwz2LIBaiCDehP6Ic+26hx3k79bgCEusAer3MfTelo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=T4iqarBW0OFkBrdWLkuA+vqIerniwaGc86+WwCG83TRCp9tLOw0neJ5ZFevQUY1MB
 7j2IqMk5sPLOjfuEvQePXnD3bHi8S8UWlGDvgRKNYtxEDDe8juUOr/caSp4yz2IV2Y
 vqLb2MQNqmWHZI5J7sh8y0/WfTD1qhT/WZnI7OolHeWH5JoGcMOxyOxCg8DSCpJBj1
 veqC9vPrBvl7aknkMR+j6HPQ0ciPeCfj/1HiF+1sR51w04Q9vPICH0+VTkUhXyHLgV
 w4fVVU0PAYp1O7g2/nZIL4oEUi6LVEIv1WzCkKkUpWFCmn8/6vrAlDRzL4JyHoicub
 3ROXLkgS+vW3g==
Received: by mail-ot1-f47.google.com with SMTP id n42so529108ota.12
 for <devel@driverdev.osuosl.org>; Tue, 05 Jan 2021 10:19:15 -0800 (PST)
X-Gm-Message-State: AOAM531OVR7Mxx6siZ+dr0VHo7OvjSeG4dc1ipKd74ZbGLQODJHQbffH
 dGKNiMIxAugrCdqKkJ8XlhZQmvIMFtjkFDJxsN0=
X-Google-Smtp-Source: ABdhPJwJusrreYsvjHDeh2fwkZYrb2DRIi7LyBLnv1R3KmX0fb2n/E6OGUWSGdciaZ84LOsfE1EjqTeIBfD2IVc0jbM=
X-Received: by 2002:a05:6830:1e14:: with SMTP id
 s20mr568624otr.210.1609870754804; 
 Tue, 05 Jan 2021 10:19:14 -0800 (PST)
MIME-Version: 1.0
References: <20210105162030.1415213-1-phil@raspberrypi.com>
 <20210105162030.1415213-3-phil@raspberrypi.com>
In-Reply-To: <20210105162030.1415213-3-phil@raspberrypi.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 5 Jan 2021 19:18:57 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3wq_TLi2uLG3stTaX6FmTV+JZLC8zO75BLgvGQuD+WfA@mail.gmail.com>
Message-ID: <CAK8P3a3wq_TLi2uLG3stTaX6FmTV+JZLC8zO75BLgvGQuD+WfA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] staging: vchiq: Fix bulk transfers on 64-bit builds
To: Phil Elwell <phil@raspberrypi.com>
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 driverdevel <devel@driverdev.osuosl.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 5, 2021 at 5:20 PM Phil Elwell <phil@raspberrypi.com> wrote:
>
> The recent change to the bulk transfer compat function missed the fact
> the relevant ioctl command is VCHIQ_IOC_QUEUE_BULK_TRANSMIT32, not
> VCHIQ_IOC_QUEUE_BULK_TRANSMIT, as any attempt to send a bulk block
> to the VPU would have shown.
>
> Fixes: a4367cd2b231 ("staging: vchiq: convert compat bulk transfer")
>
> Signed-off-by: Phil Elwell <phil@raspberrypi.com>

Acked-by: Arnd Bergmann <arnd@arndb.de>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
