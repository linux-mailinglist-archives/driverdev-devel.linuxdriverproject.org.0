Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A01139C8E
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jan 2020 23:32:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A4F585A72;
	Mon, 13 Jan 2020 22:32:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9uzh6PLoT_nY; Mon, 13 Jan 2020 22:32:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2265E855FE;
	Mon, 13 Jan 2020 22:32:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 989451BF2A0
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 22:32:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 958BA855FE
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 22:32:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k27SiZFO7x9q for <devel@linuxdriverproject.org>;
 Mon, 13 Jan 2020 22:32:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2745E85593
 for <devel@driverdev.osuosl.org>; Mon, 13 Jan 2020 22:32:49 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id v140so9963232oie.0
 for <devel@driverdev.osuosl.org>; Mon, 13 Jan 2020 14:32:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8OSe8nCMD8zFTJxmKCShhLga5sECo0uXyDP7h9INGG4=;
 b=axQjoozSX0D9ox9fE7lL98tC8TSb+KuJEbPMeky4UvzXijMl09I1ZxnBggpI8Esi59
 vlhuA91t7BRS/66OzzBO80YL+VZkn7GkZFP3Vpihy1cQnWHaK+0f19aAKv0TdoVElDP7
 pKQLwpowJGgII5EYxgXvRE17j56QOh4UUNb8fpahl+hE7DW8CiMGbxknb8fH3J0MvqOP
 qfOcEL269On1I69HPrOwjSLiGgWPMtKgbT8u6Y0BVc/3vRFiA0kslDtfdT8sFygSnLDd
 SMxQKRK5N3KKMI0ABRrvCsum3Dqe/Gv4R5ntCPRbZXIARdnQqt5eG/2aBz6kuHkGP6Z/
 00FA==
X-Gm-Message-State: APjAAAXR8v1lqwMefdvb0L7Y+hjqhRWiBZ5luWW04WqoPsorOI0zyAfX
 xwgdyMRTpTLaCsB3u7kkv2ubkFA=
X-Google-Smtp-Source: APXvYqwWJh2uEoc09klZviRUvyHl/+jxEzqm5Zxhl6GnwSnzK4N0eZ2W3Phk0Z6U1jQ4ZtZEyHVRvw==
X-Received: by 2002:aca:5d57:: with SMTP id r84mr12301976oib.42.1578954768188; 
 Mon, 13 Jan 2020 14:32:48 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o101sm4633523ota.69.2020.01.13.14.32.46
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 14:32:47 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219d1
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 13 Jan 2020 16:32:46 -0600
Date: Mon, 13 Jan 2020 16:32:46 -0600
From: Rob Herring <robh@kernel.org>
To: Alex Riesen <alexander.riesen@cetitec.com>
Subject: Re: [PATCH 7/8] dt-bindings: adv748x: add information about serial
 audio  interface (I2S/TDM)
Message-ID: <20200113223246.GA22019@bogus>
References: <cover.1578924232.git.alexander.riesen@cetitec.com>
 <20200113141550.GH3606@pflmari>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200113141550.GH3606@pflmari>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 devicetree@vger.kernel.org, Kieran Bingham <kieran.bingham@ideasonboard.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 13 Jan 2020 15:15:50 +0100, Alex Riesen wrote:
> As the driver has some support for the audio interface of the device,
> the bindings file should mention it.
> 
> Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
> ---
>  .../devicetree/bindings/media/i2c/adv748x.txt       | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
