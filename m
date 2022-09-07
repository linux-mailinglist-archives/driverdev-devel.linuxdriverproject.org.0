Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (unknown [IPv6:2605:bc80:3010:0:a800:ff:fed1:de3])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A5D5B04B7
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Sep 2022 15:07:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2ECC74023D;
	Wed,  7 Sep 2022 13:07:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2ECC74023D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uKQM7IA9n3AH; Wed,  7 Sep 2022 13:07:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB5B2400F1;
	Wed,  7 Sep 2022 13:07:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB5B2400F1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 992D91BF348
 for <devel@linuxdriverproject.org>; Wed,  7 Sep 2022 13:07:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 819AD8175F
 for <devel@linuxdriverproject.org>; Wed,  7 Sep 2022 13:07:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 819AD8175F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gRoZNURNjnMY for <devel@linuxdriverproject.org>;
 Wed,  7 Sep 2022 13:07:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC8D181461
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com
 [IPv6:2607:f8b0:4864:20::a44])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CC8D181461
 for <devel@driverdev.osuosl.org>; Wed,  7 Sep 2022 13:07:09 +0000 (UTC)
Received: by mail-vk1-xa44.google.com with SMTP id c2so7019669vkm.9
 for <devel@driverdev.osuosl.org>; Wed, 07 Sep 2022 06:07:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date;
 bh=7lx5bLcer/pmM4oEA5/D++GvCu/uPvwC4RKRj4pXwfQ=;
 b=o9kIEb3cnwp6bVVK9vZCztypqSKMx68wWHAOvAN8Zf8tEEUHkXwJp9xAMpru4pA+PQ
 JSu8LNX9BTIFl7tgDRifJ+6g+Xh1hcblg8Tqtchpe3lxlZKr/ld4voe5Gy/MQkaj2nag
 5C45ezogyvNXZp+HJkPMSa79aFjeFzl3QpCQphd2YGmSC+QK/lcQfsArPSyD26wStkFi
 VAETp2DChyW4wRv/u1JfdjRbXQeMTXe+oylc12VTE4pBLWRm9gKBwtWP7oJ2m0ptvgY6
 HxDh2d5AvXI2Hp7I1OFsNlQuf3TMcYYCMeCokuoB72lIxoArlGewn09DaHNNoRlV/NIq
 k4RQ==
X-Gm-Message-State: ACgBeo1aiTIPOru1W4jaTJQc8i6UMBSdC1VttVS973Zbcwh6FqoVEIHh
 4+UBHwtv5I2bWVgEhQb8Cx8Wgwkk0xe8/INT3PY=
X-Google-Smtp-Source: AA6agR7uTxN8JaLeT3JN7h0HwyQGJnIUAiEOQYPZgMKpx8/sX1Gp/Nyhs9bmCGy8f28tIBKDIl6bwCYFat6BU3mz1kg=
X-Received: by 2002:a1f:ca07:0:b0:386:df87:9791 with SMTP id
 a7-20020a1fca07000000b00386df879791mr1097318vkg.21.1662556028570; Wed, 07 Sep
 2022 06:07:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a67:e34f:0:0:0:0:0 with HTTP;
 Wed, 7 Sep 2022 06:07:08 -0700 (PDT)
From: Rhama Hassa <stephenchimenem@gmail.com>
Date: Wed, 7 Sep 2022 06:07:08 -0700
Message-ID: <CAN6odsj3fBzCGcxJvsHzzcsXVeHwfmmbO55rzeBkOLV1vaSW-g@mail.gmail.com>
Subject: URGENT REPLY NEEDED
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date;
 bh=7lx5bLcer/pmM4oEA5/D++GvCu/uPvwC4RKRj4pXwfQ=;
 b=oip03xKsZT9tnXCRlWnnz73oWnC+Dq+ACLMxZsYssoChftavQ8n87M6OhQ5Bv3+Mpw
 qpcM/tFyBy74b39mVrp4pgN7oXrC7X2VF4ufejTZDfHbuOOhlmAd00Jp/5j/vQHvRls8
 ZBKzHUO+cVkmck0psHdGeLlPZYezdAhHozl3pFHwOOQR9mSGSe4J0OEV8/2tmrKeBD9z
 ncX65Sshbq1FqWjuQ5KSflEti/lYW4CDKrORt5EilOX5xA0EMT37TBGyuzrzKsJNDtJp
 fBFmJF1trMQD5yFvLcs6xzG3u0sXbptvQU/TcnovyN3w7q6a9M+y9MCnr7jF/CQraKpM
 BIAw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=oip03xKs
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
Reply-To: hrhama788@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Good Day,
This is to inform you that access Bank of Plc, has received a
total amount of $20.500,000 from the Government as an accrued
funds to transfer to you.
Kindly respond to this mail for more details.

Mr.Rhama Hassan
CEO access Bank of Plc.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
