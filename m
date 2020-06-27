Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF3620C029
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 10:28:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 100938724A;
	Sat, 27 Jun 2020 08:28:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1aVTSUIXIvQh; Sat, 27 Jun 2020 08:28:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1784786D8A;
	Sat, 27 Jun 2020 08:28:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 07F441BF3F4
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 08:28:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 041BA88292
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 08:28:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YT-+pyku3NfT for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 08:28:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb3-smtp-cloud7.xs4all.net (lb3-smtp-cloud7.xs4all.net
 [194.109.24.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E805A8826E
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 08:28:38 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id p6CNjiPG4xmkVp6CQjl6zN; Sat, 27 Jun 2020 10:28:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1593246516; bh=9dCkr8q438k8a7OtUe9GHrF8GoB3+P1Sq6GHRgD7MMo=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=Ga4etwEjjiKjj4nIxTE1CvhQoVlaFwKxNCgSY6sfpcsZqEg6oiAcX9F1hc+lwW++U
 V0kIs/HxfCz1VN1NgmEDyPBofpaGADSKhaHNUoMd1PD6wyf+3JGQzq5y/oM7vmsflj
 7tYJPNoA23X85YXZI9ThqqXtiFBFK5prRYsJsILnRr1lpfYVFw5FpKu1yCm7BxyWWZ
 19AQP6iXvlOVWcVotor1SripoZ0cp4kDqjKIaBvxZmc3euhTsyc8Q1ap3oguA8j68/
 xedaWGveGcfJnMOtxuynQamYa94SA+p28rI50UPRuI2hFtRgF3BkJKW3uJ80QsQx4/
 7ggGu0Vm5mQ9Q==
Subject: Re: [PATCH] staging: media: usbvision: removing prohibited space
 before ',' (ctx:WxW)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 B K KARTHIK PES2201800185STUDENT ECE DeptPESU EC Campus
 <bkkarthik@pesu.pes.edu>
References: <20200626143205.xns6nwggskssujao@pesu-pes-edu>
 <CAAhDqq0tSftPxMWGeVy3mp4DGDN3o0uQwTqVbjYUwjqzWpbibQ@mail.gmail.com>
 <20200627050745.GD226238@kroah.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <f73c5a69-1bf9-d80d-2399-ef18ce78b8ac@xs4all.nl>
Date: Sat, 27 Jun 2020 10:28:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200627050745.GD226238@kroah.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfP9bgrYsjbNib59VOH2MNZMoeUze+VQAk3Xl6GQlkUNZRlsnHFWYe79nxsesg/Ysz9pF6xPWzoV1Mc3eMQlijsfTLWZEPQegM/l0N+JNTfOc98eveA4D
 dsYguGkiA+mPxJtKclNksyR7PAPEIwsp4T9dzMQy9uoo8YIDol91L3ZqrxkzidfK7rSVGduunsbMJRBXmk0cvwVEAVjtSdGDjemNfKLlWnlDE259Y7tYyoSt
 opCEXH+wrnKCSGFob0XxANQ+1m16grx8ee/JaEZU05CCLCQpjEuL2CKQVeAnAgjyUaL/aevg+PncqZbSgTPCCObtq/D96ilmKEBe61pz5gIKsDhwjP9x4s1z
 diM9QE5e
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 27/06/2020 07:07, Greg Kroah-Hartman wrote:
> 
> A: http://en.wikipedia.org/wiki/Top_post
> Q: Were do I find info about this thing called top-posting?
> A: Because it messes up the order in which people normally read text.
> Q: Why is top-posting such a bad thing?
> A: Top-posting.
> Q: What is the most annoying thing in e-mail?
> 
> A: No.
> Q: Should I include quotations after my reply?
> 
> http://daringfireball.net/2007/07/on_top
> 
> On Fri, Jun 26, 2020 at 11:42:49AM -0400, B K KARTHIK PES2201800185STUDENT ECE DeptPESU EC Campus wrote:
>> Oh, I'm sorry but wouldn't it be helpful if we had a file that lists
>> all drivers that are scheduled for removal?
> 
> The TODO file in the directory for the driver should have this
> information in it.  I don't know if all of the media drivers have this,
> if not, then there is no way you could have known this.

They have, and in addition the Kconfig entry will mention that the driver
is deprecated.

TODO of usbvision:

The driver is deprecated and scheduled for removal by the end
of 2020.

In order to prevent removal the following actions would have to
be taken:

- clean up the code
- convert to the vb2 framework
- fix the disconnect and free-on-last-user handling (i.e., add
  a release callback for struct v4l2_device and rework the code
  to use that correctly).

Regards,

	Hans
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
