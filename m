Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BF43B59CD4
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 15:18:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B294E227CE;
	Fri, 28 Jun 2019 13:18:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KkUEVabkxlP6; Fri, 28 Jun 2019 13:18:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1BE64227C4;
	Fri, 28 Jun 2019 13:18:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B94C1BF84C
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 13:18:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1C7CB86360
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 13:18:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UIzwvabGeWiR for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 13:18:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0021386357
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 13:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J3XH2sSbxtvC+4V51UkatTIdQ+KNsXEemy2VAPSpu5E=; b=d6bAGytRSohXn12z7v+0BI5vu
 D0SVUGTJznmaC0+ar6JNgw+2dQfkxB7HOUhEIC76fmG72ZhYb2pFp+rvv5X12MPcq8q5OHEJ9QWsy
 YpEUhLXnQM4dSZHdI5AVXqnloT+AEmWrTVZf61GhDWxmPMzV+C4xsaq3wugB/kK9mTv1Gpwsf+q8q
 did2lXeyQpB7OlPkL/lyewyrSoofTBfMne20HGseReX0k14taUkYxBcFN6o8DaWEFzumBDzPRnKv/
 xJIM4EIXpZXBU2++LZx6yqmsqVFGv9Q5gl8Kma9ah5Wah/YVMt4DPZVGDpzQ70NF27wHc/L9PFolg
 JtyEhWb/w==;
Received: from [186.213.242.156] (helo=coco.lan)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hgqlx-0000R3-2b; Fri, 28 Jun 2019 13:18:37 +0000
Date: Fri, 28 Jun 2019 10:18:32 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Hans Verkuil <hverkuil@xs4all.nl>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 00/31] staging: bcm2835-camera: Improvements
Message-ID: <20190628101832.76403533@coco.lan>
In-Reply-To: <a276361b-a111-aa2e-ce9b-37ad2c1646dc@xs4all.nl>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
 <a276361b-a111-aa2e-ce9b-37ad2c1646dc@xs4all.nl>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Eric Anholt <eric@anholt.net>,
 Stefan Wahren <wahrenst@gmx.net>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Fri, 28 Jun 2019 15:13:03 +0200
Hans Verkuil <hverkuil@xs4all.nl> escreveu:

> On 6/27/19 8:55 PM, Stefan Wahren wrote:
> > This is an attempt to help Dave Stevenson to get all the fixes and
> > improvements of the bcm2835-camera driver into mainline.
> > 
> > Mostly i only polished the commit logs for upstream.
> > 
> > The series based on the latest bugfix V2 of staging: bcm2835-camera: Resto=
> > re
> > return behavior of ctrl_set_bitrate().
> > 
> > Dave Stevenson (31):
> >   staging: bcm2835-camera: Ensure H264 header bytes get a sensible
> >     timestamp
> >   staging: bcm2835-camera: Check the error for REPEAT_SEQ_HEADER
> >   staging: bcm2835-camera: Replace spinlock protecting context_map with
> >     mutex
> >   staging: bcm2835-camera: Do not bulk receive from service thread
> >   staging: bcm2835-camera: Correctly denote key frames in encoded data
> >   staging: bcm2835-camera: Return early on errors
> >   staging: bcm2835-camera: Remove dead email addresses
> >   staging: bcm2835-camera: Fix comment style violations.
> >   staging: bcm2835-camera: Fix spacing around operators
> >   staging: bcm2835-camera: Reduce length of enum names
> >   staging: bcm2835-camera: Fix multiple line dereference errors
> >   staging: bcm2835-camera: Fix brace style issues.
> >   staging: bcm2835-camera: Fix missing lines between items
> >   staging: bcm2835-camera: Fix open parenthesis alignment
> >   staging: bcm2835-camera: Ensure all buffers are returned on disable
> >   staging: bcm2835-camera: Remove check of the number of buffers
> >     supplied
> >   staging: bcm2835-camera: Handle empty EOS buffers whilst streaming
> >   staging: bcm2835-camera: Set sequence number correctly
> >   staging: bcm2835-camera: Ensure timestamps never go backwards.
> >   staging: bcm2835-camera: Add multiple inclusion protection to headers
> >   staging: bcm2835-camera: Unify header inclusion defines
> >   staging: bcm2835-camera: Fix multiple assignments should be avoided
> >   staging: bcm2835-camera: Fix up mmal-parameters.h
> >   staging: bcm2835-camera: Use enums for max value in controls
> >   staging: bcm2835-camera: Correct V4L2_CID_COLORFX_CBCR behaviour
> >   staging: bcm2835-camera: Remove/amend some obsolete comments
> >   staging: mmal-vchiq: Avoid use of bool in structures
> >   staging: bcm2835-camera: Fix stride on RGB3/BGR3 formats
> >   staging: bcm2835-camera: Add sanity checks for queue_setup/CREATE_BUFS
> >   staging: bcm2835-camera: Set the field value within ach buffer  
> 
> ach -> each
> 
> >   staging: bcm2835-camera: Correct ctrl min/max/step/def to 64bit
> > 
> >  .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 378 ++++++++++++----=
> > -----
> >  .../vc04_services/bcm2835-camera/bcm2835-camera.h  |  34 +-
> >  .../vc04_services/bcm2835-camera/controls.c        | 184 +++++-----
> >  .../vc04_services/bcm2835-camera/mmal-common.h     |  12 +-
> >  .../vc04_services/bcm2835-camera/mmal-encodings.h  |   9 +-
> >  .../vc04_services/bcm2835-camera/mmal-msg-common.h |   9 +-
> >  .../vc04_services/bcm2835-camera/mmal-msg-format.h | 104 +++---
> >  .../vc04_services/bcm2835-camera/mmal-msg-port.h   | 133 ++++----
> >  .../vc04_services/bcm2835-camera/mmal-msg.h        | 150 ++++----
> >  .../vc04_services/bcm2835-camera/mmal-parameters.h | 286 +++++++++-------
> >  .../vc04_services/bcm2835-camera/mmal-vchiq.c      | 159 +++++----
> >  .../vc04_services/bcm2835-camera/mmal-vchiq.h      |  22 +-
> >  12 files changed, 826 insertions(+), 654 deletions(-)
> > 
> > =2D-
> > 2.7.4
> >   
> 
> This series looks good. Others made some comments that should be addressed,
> and the H264 changes should, I think, be dealt with in a separate patch
> series.
> 
> I guess this should go in via Greg?

Works for me. I won't be able to handle this before the merge window,
as I'll be on PTO next week.

> When you make a v2 (excluding the H264
> changes, and incorporating Dan's comments), then you can add my:
> 
> Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>

Greg, once the issues get fixed - and if you want to pick this for this
merge window, feel fee to pick with my ack:

Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>

Otherwise, if too late for this merge window, It is probably better to
apply those against the linux-media tree after -rc1.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
