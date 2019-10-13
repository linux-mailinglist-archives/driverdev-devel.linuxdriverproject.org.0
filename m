Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B9019D5785
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Oct 2019 21:02:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6EEA685E71;
	Sun, 13 Oct 2019 19:02:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xs-GiEYg_yuN; Sun, 13 Oct 2019 19:02:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 48FEB85E47;
	Sun, 13 Oct 2019 19:02:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4040B1BF2A3
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 19:02:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3849687B21
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 19:02:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ei6r97BVThGn for <devel@linuxdriverproject.org>;
 Sun, 13 Oct 2019 19:02:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 89A5087AFF
 for <devel@driverdev.osuosl.org>; Sun, 13 Oct 2019 19:02:20 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id y19so17177929wrd.3
 for <devel@driverdev.osuosl.org>; Sun, 13 Oct 2019 12:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=PxCXXBhA2C4YLbbTIZsjjSPm4uyCjLfswHazHo9DGq8=;
 b=PmiduzxgZfYZ4Y4miFLkBY+Tvs4U8DF0tCoOdP6wlSkN/AU0MkesEU1lPjXphgh6lI
 noVBN680XLK9ZWCPkAFIR0BYJ/DUjzyOmf5H+9Fyv0hdDDCUNBdrK15k/APgabD1a0bZ
 Fj2wih9jCXW9zok/Oja5/1BCrCkjxiIQBYyq35bzaMjis57OIJn1T8b4UKuII8elh92p
 rzn3YMGVArTbuIu86t/iu4/fAgGxUI0DIBi/8lZ5KgiqI6th8FDG1D6ncWkwW3nb4KKR
 MBI9biz7oh1SxCMyZnqC4lGoGphiyZlMis+EUj+hnWq1TjcfP6KBjzN8ZHRlaR5Hc5ho
 RlrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=PxCXXBhA2C4YLbbTIZsjjSPm4uyCjLfswHazHo9DGq8=;
 b=BskW9n3h4l/BXxGcR1c+gvh5o+pJWo+1TKLxA6Hihb/xBlpU6HqHeLgm7ogZdwlynP
 QkIYc6UEhP4zfIU0U5WTmas8vIcOjXdI6Ftr069uOL0izlXaA2eE1tec1rv9FWDmzOU6
 niPqW6a/WNR2rqXskk/0MKtJiPM5Bl+lHXoVxwPjxtdiFtfEdsZhSCE/jJmTjBZhvvn2
 OwxUJlW7ztE60tSj5atGrdZFl603D0WIcA41WEQW0bwYgD//vRoQN/tJG3t8uW4NajAu
 FI0DvsU/jofjaZnz23pWJeizzC+jqIPYvSLUY9dwFfq1duYnsnoiMpHfHVvmfPBNQmlf
 oxBQ==
X-Gm-Message-State: APjAAAXa+uQV2CITMWtcdfXvvlg7MXYL0G0jNAzT1mCa+NUJb1+zvsmR
 sqh07wDgW7MP0n/8kCxs2g==
X-Google-Smtp-Source: APXvYqwRDKLOg2xklbQug/Q9fbWTVahN4YcnnUI3vsVlqSyRaAe/iK25TsO7xBQ0WNFWVQ1TSZIO9g==
X-Received: by 2002:adf:f983:: with SMTP id f3mr22369431wrr.169.1570993338769; 
 Sun, 13 Oct 2019 12:02:18 -0700 (PDT)
Received: from ninjabhubz.org (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.gmail.com with ESMTPSA id
 s1sm23055438wrg.80.2019.10.13.12.02.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 12:02:18 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Sun, 13 Oct 2019 20:02:04 +0100 (BST)
To: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: vc04_services: fix lines
 ending with open parenthesis
In-Reply-To: <alpine.DEB.2.21.1910132040140.2565@hadrien>
Message-ID: <alpine.LFD.2.21.1910131951160.13450@ninjahub.org>
References: <20191013183420.13785-1-jbi.octave@gmail.com>
 <alpine.DEB.2.21.1910132040140.2565@hadrien>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Sun, 13 Oct 2019, Julia Lawall wrote:

> 
> 
> On Sun, 13 Oct 2019, Jules Irenge wrote:
> 
> > Fix lines ending with open parenthesis. Issue detected by checkpatch tool.
> > In the process, change driver functions name in the multiple files from:
> > vchiq_mmal_port_parameter_set to vmp_prmtr_set
> > vchiq_mmal_component_disable to vm_cmpnt_disable
> > vchiq_mmal_port_connect_tunnel to vmp_cnnct_tunnel
> > vchiq_mmal_component_enable to vm_cmpnt_enable
> 
> You should say why you change the names.
> 
> As far as I can see, there is no change to the actual function
> definitions, so the code can't compile.  Perhaps that comes later in the
> series, but the elements of the series have to be ordered such that
> compilation is possible after each patch.
> 
> julia
> 

Thanks for the feedback, I am updating it and will be compiling  
each point.
Jules




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
