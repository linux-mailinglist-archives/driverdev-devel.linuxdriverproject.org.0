Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2630EFC0A
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 12:07:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D98E8A824;
	Tue,  5 Nov 2019 11:07:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T4V7Mr4qvbgI; Tue,  5 Nov 2019 11:07:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91C3F8A660;
	Tue,  5 Nov 2019 11:07:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C9F131BF574
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 11:07:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C6B738A660
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 11:07:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CZ+vMebx-3kn for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 11:07:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1A34D8A623
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 11:07:41 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id z26so7207301wmi.4
 for <devel@driverdev.osuosl.org>; Tue, 05 Nov 2019 03:07:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=uam4yKu+WYMYJ5RphtXQPnJhDtJ0Zqcujz3CXjflWDU=;
 b=N2PWqy75qroW7rjtdCd7EbvB8HjCMOXP4R1oSiKbld5G5Phcr60+yg2bTxMNak1xZO
 c5+RtQmueIxYccx7JAR1yUKT7iWNsJ8SpsHJFmJPjPbjZZ2yuUM9zT9/Q+sQ98rjFbJO
 SUZ8oWlnA3iSexOQs6YPCF1UhNHiaSA+4+epU8Vg/pkIIbIlCCzBAZOizXboTm4dJXR1
 Cx4YKAbX3P06S66yJDRqzoTfj/P4Z2cGPXdvXeXOo+VkgFYb+FBlP6qFk8cZY9PDRZY0
 0A3iYAC5dDVSWG3rhfeiDBh2F3MW//taouRqrhPgq8TIfyUQPjnFddNkeW6zFuTh5MdQ
 Xchw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=uam4yKu+WYMYJ5RphtXQPnJhDtJ0Zqcujz3CXjflWDU=;
 b=DoFn4dnmB+1mMFQG34edGDYiabg32e6oXO2IeU1wciNSb2tW60kqwE6qfvwxKDKGy8
 W0PtYrEFcl/Rrxki5MYIAzrVHwcuVwQtoFhCNLe2P/EtZo2g8EUJtbib8qMi3hk80k/x
 g6AqFKkxdYY02suyp4HEmuyen4ciVCV/FiDIQ8Z9MRcQlnPO51xmOjDldMQRilzcQPZk
 mnp9kpQN++JMpVGuY7eW2MlSPD3jnV+p2L7bjf5PaipypE0jzFgjwMjE7k3KkIEaTpgA
 zPJGhbY9cCzbMfEy4XMZm8jeEVLcfglnRcak6nupD8a5OsURtx4X3FTnIfHbXLapM1nV
 FJgw==
X-Gm-Message-State: APjAAAVo9BOYbbhGt7HlPoOEzbsHOPXgF9pWO8Ik1Gx5wlB6GyodOc3h
 A9G+151SVZrCHYFN7YZQTg==
X-Google-Smtp-Source: APXvYqw07SweJiA+wmBvy9KuSsYO7d3T2F5giEmdTAkNnnNXyV8vSgNHJndUZr0/FWpS+E/uzHi+5A==
X-Received: by 2002:a05:600c:219a:: with SMTP id
 e26mr3479875wme.98.1572952059211; 
 Tue, 05 Nov 2019 03:07:39 -0800 (PST)
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com.
 [79.73.36.243])
 by smtp.gmail.com with ESMTPSA id b17sm11175395wru.36.2019.11.05.03.07.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 03:07:38 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Tue, 5 Nov 2019 11:07:37 +0000 (GMT)
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2] staging: comedi: rewrite macro function with GNU
 extension typeof
In-Reply-To: <20191104164653.GA2281588@kroah.com>
Message-ID: <alpine.LFD.2.21.1911051106520.11074@ninjahub.org>
References: <20191104163331.68173-1-jbi.octave@gmail.com>
 <20191104164653.GA2281588@kroah.com>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Jules Irenge <jbi.octave@gmail.com>, abbotti@mev.co.uk,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Mon, 4 Nov 2019, Greg KH wrote:

> On Mon, Nov 04, 2019 at 04:33:31PM +0000, Jules Irenge wrote:
> > Rewrite macro function with the GNU extension typeof
> > to remove a possible side-effects of MACRO argument reuse "x".
> >  - Problem could rise if arguments have different types
> > and different use though.
> 
> You can not just get away with a potential problem by documenting it :)
> 
> You might have just broken this.  Why are you trying to "fix" something
> that is not broken?
> 
> What is wrong with the code as-is?
> 
> thanks,
> 
> greg k-h
> 
Again I made a lot of mistake. I will be more carefull.
Thanks for the feedback
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
