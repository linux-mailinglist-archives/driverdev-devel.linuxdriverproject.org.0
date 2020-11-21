Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE972BBF45
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Nov 2020 14:31:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D482A2043E;
	Sat, 21 Nov 2020 13:31:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r8BKV+JfcOPV; Sat, 21 Nov 2020 13:31:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4C40F20004;
	Sat, 21 Nov 2020 13:31:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 028AA1BF3D8
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 13:30:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F258387497
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 13:30:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tE5ZuRlh0cyM for <devel@linuxdriverproject.org>;
 Sat, 21 Nov 2020 13:30:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 57E82872D2
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 13:30:56 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id z3so9318623qtw.9
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 05:30:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DRct7Qiz1NdHJ+XJtu4ATcXpdEh8Oy5keY5R6mGzDQs=;
 b=ST2lg485eJiY91hRHC2GJIYRei8dYJ5Hk1tQ1oKFIaNGrSoPv4VFPnb6Fdsxf24+AU
 vx0SMtfnl8lZnKjtZA2OQ1+8lmVaT9TdtRBSFo3ah/h/A0jBeB4c9huZ3zs649ceT8ge
 E2GGTo7gBAg0zau2+NKcQJwuNUWJ8rmlhtPhbaMiA/tsSlwGc1TZpEriqWCSlTwtPmo2
 KQetnbK2CAfcFVAluN/2L8EqPq73MpQdrqqnVaGLwqv4e2g1SZ3vYqpkcVK1ZYsr1CPT
 F4HNuF67UQTY18jG9FH69wLrOzOfxKPhQMjgxKwPSptD+COjUR7aSqCJYs7XgatV2QiD
 hUQw==
X-Gm-Message-State: AOAM530GZmeH48E8IEGhQxnPZEkNQYkwbzfONT/9zCK38qOAlntJYN4O
 x7Zy56LQx0E2595xmaLkTA==
X-Google-Smtp-Source: ABdhPJwxUXBcSJ0PMTqXgEHiurkz3GntUDhncIYmfII33t3GmLNIS7tspLTDzp4JbRXfF8EEU9bw/g==
X-Received: by 2002:ac8:36bc:: with SMTP id a57mr20501605qtc.193.1605965455403; 
 Sat, 21 Nov 2020 05:30:55 -0800 (PST)
Received: from xps15 ([172.58.99.237])
 by smtp.gmail.com with ESMTPSA id 9sm4167517qkm.81.2020.11.21.05.30.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Nov 2020 05:30:54 -0800 (PST)
Received: (nullmailer pid 2129529 invoked by uid 1000);
 Sat, 21 Nov 2020 13:30:50 -0000
Date: Sat, 21 Nov 2020 07:30:50 -0600
From: Rob Herring <robh@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: clock: add dt binding header for
 mt7621 clocks
Message-ID: <20201121133050.GA2129481@robh.at.kernel.org>
References: <20201113154632.24973-1-sergio.paracuellos@gmail.com>
 <20201113154632.24973-2-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201113154632.24973-2-sergio.paracuellos@gmail.com>
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
 tsbogend@alpha.franken.de, sboyd@kernel.org, gregkh@linuxfoundation.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org, jiaxun.yang@flygoat.com,
 linux-mips@vger.kernel.org, robh+dt@kernel.org, hackpascal@gmail.com,
 john@phrozen.org, neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 13 Nov 2020 16:46:28 +0100, Sergio Paracuellos wrote:
> Adds dt binding header for 'mediatek,mt7621-clk' clocks.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  include/dt-bindings/clock/mt7621-clk.h | 41 ++++++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
>  create mode 100644 include/dt-bindings/clock/mt7621-clk.h
> 

Acked-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
