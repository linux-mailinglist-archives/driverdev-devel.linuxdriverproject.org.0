Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 236B559CB6
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 15:13:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B9AE087652;
	Fri, 28 Jun 2019 13:13:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WgTSjvGdDF4X; Fri, 28 Jun 2019 13:13:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4D2A87648;
	Fri, 28 Jun 2019 13:13:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 46F1B1BF84C
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 13:13:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 41A24880C4
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 13:13:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F57kxLGe2uBk for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 13:13:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb2-smtp-cloud9.xs4all.net (lb2-smtp-cloud9.xs4all.net
 [194.109.24.26])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D912687F8E
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 13:13:09 +0000 (UTC)
Received: from [192.168.2.10] ([46.9.252.75])
 by smtp-cloud9.xs4all.net with ESMTPA
 id gqgahmB0KSfvXgqgdhS3hH; Fri, 28 Jun 2019 15:13:07 +0200
Subject: Re: [PATCH 00/31] staging: bcm2835-camera: Improvements
To: Stefan Wahren <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <a276361b-a111-aa2e-ce9b-37ad2c1646dc@xs4all.nl>
Date: Fri, 28 Jun 2019 15:13:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-CMAE-Envelope: MS4wfPX0wKdI6YJjmGSGjyolqCwjE4HsrSV3REhpkyUvMFCR4n8JtR3FopzDG9Y912VSq0dqocUiM1X1dMWc4BD0rWXi160fiXbAAdQM/8xoSwg+k2NqBQbd
 gbmwYyYuP2QVFrMLPDFbpXemgFBds82dLVpV8IXZC0s2cdUwWplyIgkQcUsrY7/QnoRuXcvcQW2qeX9mv4P686/udBCY4t4COT1iB2sbHZpX5FGpRH+XBpal
 mwqWp5E2OIvTnE1ReXAe9GfKZeH0AG6W+iVsrnMp5crLIpgQlZDmtBHrYHI9BmVv/Ap6ozlNGcrwt3a2I7HXJzXSh39tUz+vDmL3zaGjFfJm7T/KoM1Ov2U2
 zHHyxHhBIY4EbxG+szAt93uc/Ci3bFwUQb3wPubFbnbesPE4VzxuR+nYjj26odnOuZnobMNrqD6IDlQgpp6pj3nNhKeLR4xIShGog2vt7YXIC+MQTslz2ns1
 VODv9BhcqN1uAM6V
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 6/27/19 8:55 PM, Stefan Wahren wrote:
> This is an attempt to help Dave Stevenson to get all the fixes and
> improvements of the bcm2835-camera driver into mainline.
> 
> Mostly i only polished the commit logs for upstream.
> 
> The series based on the latest bugfix V2 of staging: bcm2835-camera: Resto=
> re
> return behavior of ctrl_set_bitrate().
> 
> Dave Stevenson (31):
>   staging: bcm2835-camera: Ensure H264 header bytes get a sensible
>     timestamp
>   staging: bcm2835-camera: Check the error for REPEAT_SEQ_HEADER
>   staging: bcm2835-camera: Replace spinlock protecting context_map with
>     mutex
>   staging: bcm2835-camera: Do not bulk receive from service thread
>   staging: bcm2835-camera: Correctly denote key frames in encoded data
>   staging: bcm2835-camera: Return early on errors
>   staging: bcm2835-camera: Remove dead email addresses
>   staging: bcm2835-camera: Fix comment style violations.
>   staging: bcm2835-camera: Fix spacing around operators
>   staging: bcm2835-camera: Reduce length of enum names
>   staging: bcm2835-camera: Fix multiple line dereference errors
>   staging: bcm2835-camera: Fix brace style issues.
>   staging: bcm2835-camera: Fix missing lines between items
>   staging: bcm2835-camera: Fix open parenthesis alignment
>   staging: bcm2835-camera: Ensure all buffers are returned on disable
>   staging: bcm2835-camera: Remove check of the number of buffers
>     supplied
>   staging: bcm2835-camera: Handle empty EOS buffers whilst streaming
>   staging: bcm2835-camera: Set sequence number correctly
>   staging: bcm2835-camera: Ensure timestamps never go backwards.
>   staging: bcm2835-camera: Add multiple inclusion protection to headers
>   staging: bcm2835-camera: Unify header inclusion defines
>   staging: bcm2835-camera: Fix multiple assignments should be avoided
>   staging: bcm2835-camera: Fix up mmal-parameters.h
>   staging: bcm2835-camera: Use enums for max value in controls
>   staging: bcm2835-camera: Correct V4L2_CID_COLORFX_CBCR behaviour
>   staging: bcm2835-camera: Remove/amend some obsolete comments
>   staging: mmal-vchiq: Avoid use of bool in structures
>   staging: bcm2835-camera: Fix stride on RGB3/BGR3 formats
>   staging: bcm2835-camera: Add sanity checks for queue_setup/CREATE_BUFS
>   staging: bcm2835-camera: Set the field value within ach buffer

ach -> each

>   staging: bcm2835-camera: Correct ctrl min/max/step/def to 64bit
> 
>  .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 378 ++++++++++++----=
> -----
>  .../vc04_services/bcm2835-camera/bcm2835-camera.h  |  34 +-
>  .../vc04_services/bcm2835-camera/controls.c        | 184 +++++-----
>  .../vc04_services/bcm2835-camera/mmal-common.h     |  12 +-
>  .../vc04_services/bcm2835-camera/mmal-encodings.h  |   9 +-
>  .../vc04_services/bcm2835-camera/mmal-msg-common.h |   9 +-
>  .../vc04_services/bcm2835-camera/mmal-msg-format.h | 104 +++---
>  .../vc04_services/bcm2835-camera/mmal-msg-port.h   | 133 ++++----
>  .../vc04_services/bcm2835-camera/mmal-msg.h        | 150 ++++----
>  .../vc04_services/bcm2835-camera/mmal-parameters.h | 286 +++++++++-------
>  .../vc04_services/bcm2835-camera/mmal-vchiq.c      | 159 +++++----
>  .../vc04_services/bcm2835-camera/mmal-vchiq.h      |  22 +-
>  12 files changed, 826 insertions(+), 654 deletions(-)
> 
> =2D-
> 2.7.4
> 

This series looks good. Others made some comments that should be addressed,
and the H264 changes should, I think, be dealt with in a separate patch
series.

I guess this should go in via Greg? When you make a v2 (excluding the H264
changes, and incorporating Dan's comments), then you can add my:

Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>

Thanks!

	Hans
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
