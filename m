Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B0CE57B6
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 03:09:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3F05E23BC0;
	Sat, 26 Oct 2019 01:09:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id soNojdNZYbdr; Sat, 26 Oct 2019 01:09:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D122020424;
	Sat, 26 Oct 2019 01:09:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F1F0B1BF40B
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 01:09:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EEDD086AC4
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 01:09:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0km8Ib3uqxsG for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 01:09:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0296F851CC
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 01:09:10 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id y189so3495324qkc.3
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 18:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=SVVhqSZ+WUIIVID3TK3wMJn2IF/IhlQmlPLvMcYQ4Ik=;
 b=o11PcGm++xdhOJeo2IK9sFzGF7n9ywWXbuKSI39nD9RPFjlq90E240GgzjJSkrGYpE
 9Ka4GK/WywwswEA0J3auRvZglTDfv53rMPpys8LmvEZ3t0yTRQsICftSkxYyVfs5TNiV
 gFX3Yo6pxm5r/h5KP72nMj0YfchbtsBWKgHq+57nkjbzkMw+ZGl/nHNsPlg13CFlphB0
 tusRYdAH0HxptzGIOf7ANNPJJtfQ+BgZ47ca5QL0Jk8vj5SxbQ8lpnYTgTeeJNMsHcY8
 rp8BAafrE8txpVvWFxXbyVFBU0O4Q8ikOECBb4XbO3952tkfv/mHiqeyTUJzVIkQC1Tz
 EOKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=SVVhqSZ+WUIIVID3TK3wMJn2IF/IhlQmlPLvMcYQ4Ik=;
 b=osyV8RKc8bCrg8Beivr21vsz1KdfZOXAGZS5Cg463q1RCzqBEri71qA2YYc2FAP6Bm
 X67KhzSzUAK4cDE8AmmmSi72TII2RQ+zMNyGMzEqgzJserwinoantyU2BBPa6SP47hc1
 YqY2lIuljASSpfu5R3z2xo1fIl1F7TGx0vohOUeDB/o6Ix4omh302JwOnyBGnBGWRjfh
 9w9yc9XZthK8y+KikNL8QFyeND1QLK8tmTGzHup8Q3TFYInSmcA39zX6jPadFzViDvYj
 pZ24odva71yz25L8kEiIh1RQ9xSwSq9loc2T9Oxni0x7VI4QW5g5nVrdThPQjbh0YB2P
 e/GA==
X-Gm-Message-State: APjAAAVfUtrPzOQKIAQS9J3+k527MC4kHE/6wxjGkpiJx8z1HBaA+tFf
 SqT9RR7qglNyoxgUgJ7ZYtA=
X-Google-Smtp-Source: APXvYqziEgRTRrtd9Yeos6xrvRuhxjwS1tLC4dGxfrGi1JC+yWRlaW4XPsi0QljKUfGOaNPnqfoVZw==
X-Received: by 2002:ae9:e8c3:: with SMTP id a186mr5484714qkg.97.1572052150047; 
 Fri, 25 Oct 2019 18:09:10 -0700 (PDT)
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
 by smtp.gmail.com with ESMTPSA id y10sm2555234qkb.55.2019.10.25.18.09.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Oct 2019 18:09:09 -0700 (PDT)
Date: Fri, 25 Oct 2019 22:09:05 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH 0/2] Cleanup in rtl8712
Message-ID: <cover.1572051351.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleanup in rtl8712

Cristiane Naves (2):
  staging: rtl8712: Fix Alignment of open parenthesis
  staging: rtl8712: Remove lines before a close brace

 drivers/staging/rtl8712/rtl8712_recv.c | 32 +++++++++++++++-----------------
 1 file changed, 15 insertions(+), 17 deletions(-)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
