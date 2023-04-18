Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 880AD6E5639
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Apr 2023 03:11:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F99382040;
	Tue, 18 Apr 2023 01:11:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F99382040
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wDcLJC7kNm-b; Tue, 18 Apr 2023 01:11:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 763AC82032;
	Tue, 18 Apr 2023 01:11:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 763AC82032
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A6F3B1C4254
 for <devel@linuxdriverproject.org>; Tue, 18 Apr 2023 01:11:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7E9F5417C0
 for <devel@linuxdriverproject.org>; Tue, 18 Apr 2023 01:11:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E9F5417C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 21G70osa1Sb2 for <devel@linuxdriverproject.org>;
 Tue, 18 Apr 2023 01:11:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9ABED417AE
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9ABED417AE
 for <devel@driverdev.osuosl.org>; Tue, 18 Apr 2023 01:11:15 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id f39so497714vsv.4
 for <devel@driverdev.osuosl.org>; Mon, 17 Apr 2023 18:11:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681780274; x=1684372274;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=pOZWpHPONtN7zZsVX/5fsJwnQY3VExlQWj07foyji3A=;
 b=Pwkk2HyI9TlHRFk+JsPe790JsfnyWkRC1yRng/JQ9MquZ2pYfU5Uc4vcikDLnXyD6t
 Xy5NR8RMhBT6CG8PcsjRJ7tBS216UxS5RMbs/O4H+t6HWaQitrGNf/HzXQjsEwzMZvXe
 /MifCgN/L/qgF+vxxCQPW+82QJ/rZ1WqPhQHwMbm27ADQoKsLjynPP+ZHS4HNFBDdTD0
 SMJFO+jo2pkxzOPf7RRLpfUOVwICVooC04XIOgFhFvttHUvVc+9idlraPcT5gLll4HlU
 XMNXVg4hxWdhdMHXtP4YcqjblHUrAx94l5wV8M3lPvkDEFvQk13eCPDuXUUNsD6MM7ZZ
 oF0Q==
X-Gm-Message-State: AAQBX9f/1BUXHCEr9RZGE9BOJd3zOQoGcXFlucnDaeYOLfDStwjkqpUq
 OByaYtbnSqJFhJeKwhT28LgJsyzdClKhrkCA4Oo=
X-Google-Smtp-Source: AKy350ZbL/23W7VrPqiCqHw0RQUHN/19JgcuB+fbJ9qlP5XCo9lFlRBrFmpqh4mchTkARDrl2ENe//Yh2L3oUMFpw6E=
X-Received: by 2002:a67:e1cd:0:b0:42e:5599:7021 with SMTP id
 p13-20020a67e1cd000000b0042e55997021mr5369210vsl.5.1681780274465; Mon, 17 Apr
 2023 18:11:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:22c6:0:b0:772:9f37:85ec with HTTP; Mon, 17 Apr 2023
 18:11:14 -0700 (PDT)
From: john mike <johnson303mike@gmail.com>
Date: Mon, 17 Apr 2023 18:11:14 -0700
Message-ID: <CAE1oSEf6j8CQhUbDSX_o8r8svX-QR43CVF1EsEAfgUTgrtHU=A@mail.gmail.com>
Subject: waiting transfer
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1681780274; x=1684372274;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=pOZWpHPONtN7zZsVX/5fsJwnQY3VExlQWj07foyji3A=;
 b=sQta8dS4v6QjbacRoEX+3emtAM7anNzHsZQqTRdI4BU9olLGWAJbgwkd39LNsAOOfZ
 tME8s3iu8idRsA8i+Hs/r6sUE/3dDWuG6AX68TWFHriWHzRgyhOZLi1UvxdIXchyaus0
 gr7rBaAt9mkfWxD+n0QjJZH40r6LEkqtqxNAGwuFJaiaRU1n7IGeMLn8ckH6cqjbtI4e
 f6JrhKvgYwh5B9cOGn4gmdZIY473CQ916cjHt21DrYDTv65FpRrtRuO/9KWQSNVnpBwQ
 6SjnV/YFGgXvJQ35dNBdA8nZePVEgwdVDEhIkgZdAwJBKarwHhisj1SXxiirN3R/bmbP
 hSVw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=sQta8dS4
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Valued Attention
Our recent record   indicates that you are eligible to receive an
optional repayment of cash fund!! $750,000.00 which has been found in
the security vault registered in your favor under your email account
waiting to be dispatch without claims.
the account is set up under your email address  can only be obtained
by you (receiver),all  you have to do is to provide
Your full Name.....................
Direct Telephone: ..............
And delivery address........... For immediate shipment
Thanks and anticipating your urgent respond
finaccial@citromail.hu
Yours faithfully,
Johnson Mike
Section assistance and   Verification committee
USAfro-Euro   Debit Reconciliation Office
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
