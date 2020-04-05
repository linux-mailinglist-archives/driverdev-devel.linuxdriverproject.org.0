Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F151219E84B
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Apr 2020 03:32:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 01F868612E;
	Sun,  5 Apr 2020 01:32:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j-D8hmlch9lI; Sun,  5 Apr 2020 01:32:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD4BD86119;
	Sun,  5 Apr 2020 01:32:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B8A2B1BF25F
 for <devel@linuxdriverproject.org>; Sun,  5 Apr 2020 01:32:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A99E58823F
 for <devel@linuxdriverproject.org>; Sun,  5 Apr 2020 01:32:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Bow+vgXjkU3 for <devel@linuxdriverproject.org>;
 Sun,  5 Apr 2020 01:32:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com
 [209.85.166.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2C8A687FA4
 for <devel@driverdev.osuosl.org>; Sun,  5 Apr 2020 01:32:38 +0000 (UTC)
Received: by mail-il1-f194.google.com with SMTP id x16so11306859ilp.12
 for <devel@driverdev.osuosl.org>; Sat, 04 Apr 2020 18:32:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:content-language
 :user-agent;
 bh=bbwT0JDvAgpa3Sushm5zcwL/0sAYePwp2JhJddCJiiQ=;
 b=UZ2Of1lfXFzLiLN67Y1Dh+el7S6pI9/JnXxixypUqDZTvfnziK5W/HQOvTJM73N7oW
 YS+vhoPuZDGk0V7c4lTbZTru7uljNgg2xGcvyHnz5VO8RtataUIUhNwWMmlemdjzDPxH
 1uVmtk1L72BEZjE6/eSrtoVCEZvw62pbTN+EleLWg1D2pqLvB7dy+e/AI42T3/zjaGDL
 MkPqtGSIE6vMLZB6HKH2Rl8uKPP2SxSUhB7Xua4EqHKIMXaJ6XTW20UXg64PxcfOW1AD
 kYZKzo8pOO9MUtDkfUfmbL3dezwPqsKtzWlvfbPDAdrrKXTOqGrFUoQERlhosKT5EaIA
 6GnA==
X-Gm-Message-State: AGi0PuY+vLz5I/FnqY9c4CK2w8tgKztoyQPJhHyXXo+cUbH1VEpqTt25
 0VwFooDswF2WTjcIJBhzEg==
X-Google-Smtp-Source: APiQypJIboR7CPmas3cH43grVLYaKmX7hmJ5bSlCUVLcJdeUJEMupnl7qTdmDv4uL+jfDP3xqrCl9g==
X-Received: by 2002:a92:9149:: with SMTP id t70mr16383960ild.114.1586050357391; 
 Sat, 04 Apr 2020 18:32:37 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id i16sm4429879ils.40.2020.04.04.18.32.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Apr 2020 18:32:36 -0700 (PDT)
Received: (nullmailer pid 24273 invoked by uid 1000);
 Sun, 05 Apr 2020 01:32:35 -0000
Date: Sat, 4 Apr 2020 19:32:35 -0600
From: Rob Herring <robh@kernel.org>
To: Ajay.Kathat@microchip.com
Subject: Re: [PATCH v6 16/17] dt: bindings: net: add microchip,wilc1000.yaml
Message-ID: <20200405013235.GA24105@bogus>
References: <20200327063302.20511-1-ajay.kathat@microchip.com>
 <20200327063302.20511-17-ajay.kathat@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327063302.20511-17-ajay.kathat@microchip.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ajay.Kathat@microchip.com, Venkateswara.Kaja@microchip.com,
 gregkh@linuxfoundation.org, linux-wireless@vger.kernel.org,
 Nicolas.Ferre@microchip.com, Adham.Abozaeid@microchip.com,
 johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 27 Mar 2020 06:33:20 +0000, <Ajay.Kathat@microchip.com> wrote:
> 
> From: Ajay Singh <ajay.kathat@microchip.com>
> 
> This file describes the binding details to connect wilc1000 device. It's
> moved from staging to 'Documentation/devicetree/bindings/net/wireless'
> path.
> 
> Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
> ---
>  .../net/wireless/microchip,wilc1000.yaml      | 71 +++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
