Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A2C51E872
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 May 2022 18:11:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CBC598267F;
	Sat,  7 May 2022 16:11:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3KBvaf6cxS-U; Sat,  7 May 2022 16:11:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BB2082668;
	Sat,  7 May 2022 16:11:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4B6B31BF82D
 for <devel@linuxdriverproject.org>; Sat,  7 May 2022 16:11:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 32CC660803
 for <devel@linuxdriverproject.org>; Sat,  7 May 2022 16:11:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=ideasonboard.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hegdp8Hv0xF3 for <devel@linuxdriverproject.org>;
 Sat,  7 May 2022 16:11:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BB1236079D
 for <devel@driverdev.osuosl.org>; Sat,  7 May 2022 16:11:10 +0000 (UTC)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1A81F55A;
 Sat,  7 May 2022 18:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1651939867;
 bh=se6o+9yWQACYAlaRsFAG9CGqkeJ/BhQO9jJBskb2Neg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fqNOBIfbd+f+sPsUEmlUPkIqCxXSgnM+73ZAftzPl3DpAkHNQuo02O0RoWY32BwuP
 hT0N7IwYKV5SXM/OFr60fGDCoeq++bZRBBby5U4v43ddEJOmSvT65Rzc01MALAcbbr
 AAGZQ0kTMJNvx9m6Vp+VkO2m5VmDiOeA4MR+hg84=
Date: Sat, 7 May 2022 19:11:03 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sergey Meirovich <rathamahata@gmail.com>
Subject: Re: [PATCH RFT/RFC v2 01/47] staging: media: Revert "media: zoran:
 remove deprecated driver"
Message-ID: <YnaaF8AtSA8glnEg@pendragon.ideasonboard.com>
References: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
 <1601058657-14042-2-git-send-email-clabbe@baylibre.com>
 <CA+QCeVRjnU6RwHkj3c54pzLq6yeaZ1Lz8eG4vDOkGT5RyKvJhA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+QCeVRjnU6RwHkj3c54pzLq6yeaZ1Lz8eG4vDOkGT5RyKvJhA@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 Corentin Labbe <clabbe@baylibre.com>, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 07, 2022 at 10:58:39AM -0500, Sergey Meirovich wrote:
> Sergey Meirovich has sent you an email via Gmail confidential mode:
> 
> Gmail logoRe: [PATCH RFT/RFC v2 01/47] staging: media: Revert "media: zoran:
> remove deprecated driver"
> 
> This message was sent on May 7, 2022 at 8:58:50 AM PDT
> You can open it by clicking the link below. This link will only work for
> laurent.pinchart@ideasonboard.com.

Please don't use this feature when posting to public mailing lists. Such
messages will be totally ignored.

> View the email
> 
> Gmail confidential mode gives you more control over the messages you send. The
> sender may have chosen to set an expiration time, disable printing or
> forwarding, or track access to this message. Learn more
> 
> Gmail: Email by Google
> Use is subject to the Google Privacy Policy                            Google
> Google LLC, 1600 Amphitheatre Parkway, Mountain View, CA 94043, USA    logo
> You have received this message because someone sent you an email via
> Gmail confidential mode.
> 

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
