Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65386BCA29
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Sep 2019 16:25:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 30DEF220C5;
	Tue, 24 Sep 2019 14:25:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R0oUe+8hV3aX; Tue, 24 Sep 2019 14:25:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ACA0F2045C;
	Tue, 24 Sep 2019 14:25:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D8C491BF401
 for <devel@linuxdriverproject.org>; Tue, 24 Sep 2019 14:25:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D603A203AE
 for <devel@linuxdriverproject.org>; Tue, 24 Sep 2019 14:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6e4p4UlIei9L for <devel@linuxdriverproject.org>;
 Tue, 24 Sep 2019 14:25:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 46B2A20365
 for <devel@driverdev.osuosl.org>; Tue, 24 Sep 2019 14:25:33 +0000 (UTC)
Received: from mail-pg1-f200.google.com ([209.85.215.200])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <connor.kuehl@canonical.com>) id 1iClkw-0001nr-RT
 for devel@driverdev.osuosl.org; Tue, 24 Sep 2019 14:25:31 +0000
Received: by mail-pg1-f200.google.com with SMTP id o32so1395741pgm.18
 for <devel@driverdev.osuosl.org>; Tue, 24 Sep 2019 07:25:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=d2M7WLJ3K74mxo9MIAH0NR1Us3L8/cH8DqjuitiaoO0=;
 b=D+tON1vYyuiWvkTZiYW3G43BClbvuaZwpQTJuaesqOuQcopoh0ZRzjz3UG1lHzLWON
 wOiwltlb1oC+pp2HuUFe0Lqq2dSEUD7YnmG4j+Fv87gSgizzPTBcGJcngyjPyZpC0iSh
 4414pX22wDbwNAPfOHZe87umR4WsFgSsooVvtBpo+qLoxkwJzt+bYrw2pN8+sRtE90eo
 bM2b72wekNmrO5I3BeMLnwqnCOcFRMTWiHEJln7d8uffgpwTetGDSVE8KB52y7MentwB
 1zdqApta0cn+yrZn8h/qrq9tMFhc7ZofWlnSqaJ96clKM+6ApQkua0bc0fHHxboAHDhV
 /3qw==
X-Gm-Message-State: APjAAAWNfJ0ZmjrxmGbBV80SgBB7yYivPLwgLF4qeEIQRDQUFgHkloPV
 3xaVUsCnsn5CHmWyWR1JYapOi9P6hUf1BmnmEY+1TTtpIcOm/cOhK6r426m8yJkvLGjumS6I4zr
 dM9BZMTkOA2o5XpX7WE0tM1pH2GzzIG9wTIdmspw=
X-Received: by 2002:a63:a051:: with SMTP id u17mr3356953pgn.7.1569335129529;
 Tue, 24 Sep 2019 07:25:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxBnSY55GzZ2RMXUXmrcReDI1y3kPMa6mqQgjlGQHKADDop+hVWXf6WJYYfPT50sFT/Uq43rQ==
X-Received: by 2002:a63:a051:: with SMTP id u17mr3356931pgn.7.1569335129308;
 Tue, 24 Sep 2019 07:25:29 -0700 (PDT)
Received: from [192.168.0.179] (c-71-63-131-226.hsd1.or.comcast.net.
 [71.63.131.226])
 by smtp.gmail.com with ESMTPSA id f188sm2037899pfa.170.2019.09.24.07.25.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Sep 2019 07:25:28 -0700 (PDT)
Subject: NACK: [PATCH] staging: rtl8188eu: remove dead code in do-while
 conditional step
From: Connor Kuehl <connor.kuehl@canonical.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, devel@driverdev.osuosl.org
References: <20190923194806.25347-1-connor.kuehl@canonical.com>
Message-ID: <52e473f0-6b92-9504-b86e-a73a0d82617f@canonical.com>
Date: Tue, 24 Sep 2019 07:25:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190923194806.25347-1-connor.kuehl@canonical.com>
Content-Language: en-US
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I'm sending a V2 with the loop removed.

Thanks,

Connor
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
