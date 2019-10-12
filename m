Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CE0D5090
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Oct 2019 17:01:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E44A388717;
	Sat, 12 Oct 2019 15:01:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JwL43WWsMFtu; Sat, 12 Oct 2019 15:01:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EDE858836B;
	Sat, 12 Oct 2019 15:01:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BF6DE1BF38D
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 15:01:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BBE1986943
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 15:01:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IWCf_mdAT64X for <devel@linuxdriverproject.org>;
 Sat, 12 Oct 2019 15:01:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1DCF58542A
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 15:01:15 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id z9so14873088wrl.11
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 08:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=wVHcI9lSX8uaanGOnUjTf6lBkgZpFUQiHj5D28R77UI=;
 b=Z40kAoLXOa7xNeMlvgjV/XN8StTUUqzxN+pH0LjQpN9c4e/UkTuBbt26vsmjr5uqRj
 4YMMxQ+eHT22lGwozUzw8P9hyw97FaX7Qj4RhdbFgjkNoQ+pIv6HTrJHiBvhcCu6aW/R
 D304+7rWRCWMSCd6OtCCLA0qvDiwwaLzYQl5Dri6dTMVMkxn+Oazp+4NFKYLfYKT2tK+
 lWp1UUUol393Oqr2L+PNLOC71Uv7Zp9kxH+tsvMbj0WT+5kecjiuSvRA1DwcLUreVE9S
 ubLwyURpWBG8OLEjGEqYG45IMtXOxhkdKxGQR4XlPWRiMxBdY8+jq/bMJO4lwV2N2YfT
 Ukgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=wVHcI9lSX8uaanGOnUjTf6lBkgZpFUQiHj5D28R77UI=;
 b=H88YBXHyLmxLPRUS8VaXqEtB5StB3CYU5371E7Npy1+F/IQs0p2zbdF/UkNPZEklKz
 RRj5IKDHAW0NtDQNM3uBBxTtMXrPRbBntsZJIMySka0fRMTW3vRWCk0wH5m0ZQR8HuBs
 /0u9WpLr2RSDh5tRE0GdzBLWbphshrFMtTkBwBrhtf/yTAnxp75dHa89rnSsvFMKSBHN
 kZ9ioQG4ewCf29jAa7YE55g3Kl+J3h0Yo9MfUaZNDwjrqXo5Wn/+VapNYHHbQjM31EzI
 zXZohaMLVrSDpMWP8ZbtdGngE+TbboaHNjGgr58YbVRQYSo+vN8Fic2ssYln1fikbrHp
 +sCA==
X-Gm-Message-State: APjAAAU4URo8Sl23hcUD95kQfM1rVNr8lA2E4MrSIJcBGYuVBAfI1bZm
 uYh20ek9E2+IkDq+Y+3ozw==
X-Google-Smtp-Source: APXvYqyPqpqzbP3XnFoMi2/Pw8QbR40wew29pTMGd6u41ZdKzpdyoEoKHixDywvu/gSA1r4Y94rusw==
X-Received: by 2002:adf:bd8f:: with SMTP id l15mr17498773wrh.362.1570892473305; 
 Sat, 12 Oct 2019 08:01:13 -0700 (PDT)
Received: from ninjabhubz.org (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.gmail.com with ESMTPSA id
 u2sm5154279wml.44.2019.10.12.08.01.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 08:01:12 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Sat, 12 Oct 2019 16:00:59 +0100 (BST)
To: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: fix warning
 of Logical continuations should be on the previous line
In-Reply-To: <alpine.DEB.2.21.1910112336440.3284@hadrien>
Message-ID: <alpine.LFD.2.21.1910121551090.15982@ninjahub.org>
References: <20191011212745.20262-1-jbi.octave@gmail.com>
 <alpine.DEB.2.21.1910112336440.3284@hadrien>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 f.fainelli@gmail.com, sbranden@broadcom.com, mchehab+samsung@kernel.org,
 outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, eric@anholt.net, daniela.mormocea@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 dave.stevenson@raspberrypi.org, rjui@broadcom.com, hverkuil-cisco@xs4all.nl,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Fri, 11 Oct 2019, Julia Lawall wrote:

>
>
> On Fri, 11 Oct 2019, Jules Irenge wrote:
>
>> Fix warning of logical continuations should be on the previous line.
>> Issue detected by checkpatch tool.
>
> There seem to be several changes mixed together in this patch.
>
> Don't have a subject line that is identical to a line in the log message.
> The subject line should be short.
>
> Keeping the arguments of && on the same line, but breaking the line after
> a == doesn't seem to be a good idea.  It would be better to have the left
> argument of == on one line and the right argument on another, if that is
> needed.
>
> julia
>

Apology,
Yesterday was my bday, I was reckless.
I am resending now. Please do not hesitate to give me a feedback if 
possible.
Thanks
Jules
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
