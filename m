Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2AF28C667
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Oct 2020 02:37:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 190E587A5C;
	Tue, 13 Oct 2020 00:37:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C427teCwXsnK; Tue, 13 Oct 2020 00:37:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 93BE2879ED;
	Tue, 13 Oct 2020 00:37:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 35C961BF966
 for <devel@linuxdriverproject.org>; Tue, 13 Oct 2020 00:37:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3213E86D82
 for <devel@linuxdriverproject.org>; Tue, 13 Oct 2020 00:37:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W6N7COiCpI7v for <devel@linuxdriverproject.org>;
 Tue, 13 Oct 2020 00:37:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8E09B86D76
 for <devel@driverdev.osuosl.org>; Tue, 13 Oct 2020 00:37:11 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id r10so16138782pgb.10
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 17:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QguIN+MWkuVrUIVhlT/GAiMKd61MVStubKHegyevkY4=;
 b=D0WspYkOVRlf/Hh2i8c2GZGvwcGuLEh8tWt7/sei3VfZf1AYgafNswQFM17SofrqLn
 ssYcgESBEuHv6PEZY35YQnZoEWP87xauG7Jb7Rlo38BF3Gu9bJIoCCvyukfl8tqWvA7A
 UgnsYzdkIKn1aQbwuzroXgbd0BDwYHpgQMJYYnzAwtf2Al3zzoJ+VHh7ieZ8sjhwv1Nq
 bvLOWAWdECEm686SAqakuxQk2Pnd7E3mrVZXFidZ9k1jq/eOjIkuDGUXySuE7oX8Yl/X
 yPKGmR6n9tyD8wcFb+FbnTjJW+MhMcuRp720uJ/c0WDlWkHaa02doXiRR0E//F7f8djV
 CGmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QguIN+MWkuVrUIVhlT/GAiMKd61MVStubKHegyevkY4=;
 b=BdiMUnIuO1LEsG4spkG/rdiDq3XjB6jxLrkQG/UmuSaP240brXJI/0SxjcGq7OSnr7
 kGHCqsu/jvNLfDKJJi395fpOxd2CNxYlkr+ybWJl57Y3rsvRNfW69At1c7m/Y7181CKO
 svPrvvkUwAfMVQEMQIB/1wHaYuL6A8n/QIU4a+UWlB6wDSrp48RcyeKH+a1AtoU7DlHY
 SX1X4Q2+ZR5+875SPb8MSabkhCdc8AoYKoj0AYjQ5tki685MatJnoETGvFjd2+gRalON
 9nRvsG6b8hg0stctD97BSAalJJcgtFw5vCUqFKZEO0+UJ+fYRXZA1v2P/WUfx2pXrGnG
 ZjiA==
X-Gm-Message-State: AOAM533BI5TNejCn715jTKqH4r/mxUOjK0Crj9QZZ1iHpUZ3UoMDSQ/7
 GTsYTHigByhb97C2vUOK/fw=
X-Google-Smtp-Source: ABdhPJzO6K9MfpinQIt3Psy5lJo6ln90V8vgi1VhpKO7OswUKj8pPFqLpr+v0wP3nkPo2aN4UVpvkQ==
X-Received: by 2002:aa7:9358:0:b029:152:b349:8af8 with SMTP id
 24-20020aa793580000b0290152b3498af8mr26858626pfn.9.1602549431129; 
 Mon, 12 Oct 2020 17:37:11 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id b185sm20580852pgc.68.2020.10.12.17.37.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Oct 2020 17:37:09 -0700 (PDT)
Date: Tue, 13 Oct 2020 09:37:04 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH v1 1/6] staging: qlge: Initialize devlink health dump
 framework for the dlge driver
Message-ID: <20201013003704.GA41031@f3>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-2-coiby.xu@gmail.com>
 <20201010073514.GA14495@f3> <20201010102416.hvbgx3mgyadmu6ui@Rk>
 <20201010134855.GB17351@f3> <20201012112406.6mxta2mapifkbeyw@Rk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201012112406.6mxta2mapifkbeyw@Rk>
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-10-12 19:24 +0800, Coiby Xu wrote:
[...]
> > I think, but didn't check in depth, that in those drivers, the devlink
> > device is tied to the pci device and can exist independently of the
> > netdev, at least in principle.
> > 
> You are right. Take drivers/net/ethernet/mellanox/mlxsw as an example,
> devlink reload would first first unregister_netdev and then
> register_netdev but struct devlink stays put. But I have yet to
> understand when unregister/register_netdev is needed.

Maybe it can be useful to manually recover if the hardware or driver
gets in an erroneous state. I've used `modprobe -r qlge && modprobe
qlge` for the same in the past.

> Do we need to
> add "devlink reload" for qlge?

Not for this patchset. That would be a new feature.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
