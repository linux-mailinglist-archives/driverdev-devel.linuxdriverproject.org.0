Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85901396853
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 May 2021 21:26:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C899660A58;
	Mon, 31 May 2021 19:26:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k4dNcg-4HFrd; Mon, 31 May 2021 19:26:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C706607C2;
	Mon, 31 May 2021 19:26:48 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C90921BF2FD
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 31 May 2021 19:26:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C511583B46
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 31 May 2021 19:26:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PHow87RALBQP
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 31 May 2021 19:26:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com
 [IPv6:2607:f8b0:4864:20::134])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4231C83B45
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 31 May 2021 19:26:38 +0000 (UTC)
Received: by mail-il1-x134.google.com with SMTP id g11so10855433ilq.3
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 31 May 2021 12:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=pDFxG7VQh8w/j0MQ9kb5g324X46YhyItfelyMryxj/Y=;
 b=oj4FrRsQFl0OVuhaIUgkyMep6Tm5jB+rFBSIaRYzxOQcQspJtP+PE9byFsnmTBstDD
 eXTg8M2miKDI6GN6v4RoQbnvn/FqEzI8t5gqhDS6c4MT2w23hBEHAppQ43oxvGDSWbQ/
 Mis2QdZoKVLDEmEJxRS1xlA+Xv2gssT3yoxC6/o1Qg+RaAYtGY/TEusvXMdCcF9iUVie
 Aqz5nyG296Vn9bGp2XMrpDJkqa/4HOZdObTkRRT5gt1RczUKX6rJYl/loFuOHNOC+cVE
 kHyItp/XvtnJWJKprNKU38C2P0q6Jnzl7IcXIg1J+6ICmmLltHHgOGkkChCmtE/hpEyr
 vHxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=pDFxG7VQh8w/j0MQ9kb5g324X46YhyItfelyMryxj/Y=;
 b=aw0Pr6ZvgnwgzcWrBaSy6luafYbj1n660uABrWeroLJAsCDepbgVZMLWmBx7le8Zx3
 5PZYlM1komb+urrkYmO9EvPvGgy0WupagnT7e2Zn8G0LnBI2+NSXlPEmJxAoXar+A+sB
 nrc/115oupBEq1JS2KvtboBZmPPAFIOgNpoQjLp1t+0l8G7e3Fl+/SE3glaB+Yt2nxSq
 0ffwVklG3uzMLxXj5+S5ZZMS20/MS9e023+9sfJzaJMUrrx+iYvx4ZbSHgS7PeAOgpNC
 A84aoN7JDoZZoE0oNutoZ/ZiBFu8lx5WOgxVrOiSp+h5LyP0pTeigcAsx9xNE0B608Px
 EgUw==
X-Gm-Message-State: AOAM531eWn3jOBS30ywmiPOnHGeYfBy/RlVCHkC9sQhOf5Lrpbcj5dKG
 eexnRo+Y4dCls5x6iv8cH9IR7ZdwMrJE+shuCtQ=
X-Google-Smtp-Source: ABdhPJyA6+Ze8/MMj2EurWDdmE1/1LRRXUxWNSAOrc4TLqBpQAZMf6BLN7t0tz6n3p124b/8GSo/9i6twAYuDuYIR7w=
X-Received: by 2002:a92:cf48:: with SMTP id c8mr8487195ilr.66.1622489197072;
 Mon, 31 May 2021 12:26:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a6b:7802:0:0:0:0:0 with HTTP; Mon, 31 May 2021 12:26:34
 -0700 (PDT)
From: Katherine Rafael <nuruelyag@gmail.com>
Date: Mon, 31 May 2021 19:26:34 +0000
Message-ID: <CABFMN1HbSH8ZthpvyWwy11e+h89n-ibwmZbtHaoLZOxQ+UP13Q@mail.gmail.com>
Subject: Yang paling kusayangi,
To: undisclosed-recipients:;
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
Reply-To: kath.rafael2020@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
My dearest in Mind,

My name is Mrs. Katherine Rafael, a business woman an Ivorian Citizen
and born in 1961. I have a mission for you worth $ 2 500, 000, 00 (Two
Million Five Hundred Thousand United State Dollars) which I intend
using for CHARITY.

I am a breast cancer woman and have told by doctor that I will die in
no distance future, now and want to donate this money for charity
through you by transferring this money to your account, to enable
people in your area benefit from it.

Could you be the one I will use in this noble transaction before I
will go for my surgery?


Mrs. Katherine.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
