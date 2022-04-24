Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1255250D178
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 Apr 2022 13:24:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9D3AB408ED;
	Sun, 24 Apr 2022 11:24:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oDHwJ4W4xlxe; Sun, 24 Apr 2022 11:24:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DABD14010D;
	Sun, 24 Apr 2022 11:24:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 190731BF580
 for <devel@linuxdriverproject.org>; Sun, 24 Apr 2022 11:24:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1647181551
 for <devel@linuxdriverproject.org>; Sun, 24 Apr 2022 11:24:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IY8V9-S8SgjK for <devel@linuxdriverproject.org>;
 Sun, 24 Apr 2022 11:24:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6DB168151E
 for <devel@driverdev.osuosl.org>; Sun, 24 Apr 2022 11:24:51 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id e30so11855425eda.0
 for <devel@driverdev.osuosl.org>; Sun, 24 Apr 2022 04:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=fFI5My6Wyn3JK8C1m52sphMZvhsHMtCUB8FydqRi4TQ=;
 b=j513whmf4cdJQXZULMqGnhoVe6KVrXgMJ5xt4HecG7sDbE16guJos6BEW0IQ4rMcF+
 PGR4XckSymFzFk7poourAN0tc0DYYpPYGkI/RXCQIMr4zFnlrUd0rhD0xPgZBiNVIWGv
 dXQWldwTsAO9bsmsUD5HunKEMTNSgHsXXNINvFuD4TqkWI0FhcDrtUIZLlNhenl5T9nW
 CWpEDn56X9/purO7yZ5ZLPAHeCchPlYrpLut/qim5JIKXU2IDaYzrEbjk8Vdk2UpLcJn
 Mvj7QZlBsBl/OkSlr51iGA5agJcceCsT1Z2FljAihwvL0z39eFkW3f0UIGP4o+6kqcJ6
 0mJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=fFI5My6Wyn3JK8C1m52sphMZvhsHMtCUB8FydqRi4TQ=;
 b=oJldQHg/n5J+dgtLOSWtnNMSkOQcPIUZeMHk7HjL/+ReusKlQQ7e7AgfsnVT6OFWHg
 ICcva/wOQ2RwL3mZmFpdtCUG35y/e9ChtgycdyKqw4QXHfAxs7TxSfEXaj/oYpEq6T7t
 Dp4ErmGq3C8p7pgngO34HaRePbFT+J7OokuL08+zEN9Lr+QhC0cQK1Q6ZeKGoYpIXgxR
 EIpETKGm2pGoXzdavy1g1NyM6Yb9gNb7Hu/HvjxT4UbRUns3tJPMlc4/bmBMDeFw9wrk
 V6OJEGULg6kIWETDE2yMD6kXwgiO6Vkv4XaY8jdohhhvHD+NmhCVp9TK/BVI1b+/Cpfh
 h1vg==
X-Gm-Message-State: AOAM5332zU+pWxxQFkHNcwtuFIhxWuLd+QhVItSOqEm60rDy5sGOkr9D
 I9nFdnpObd+0s9xflwXgAm40y1rvGDNYf5QOpwU=
X-Google-Smtp-Source: ABdhPJxUVLehyInUd/oxdyKvqVCPqPotAF0v4sUpjdeqM8sXGp0ctkRxHRGke01BEVvMMt4fgQ7if5SA5PuKipDsKOU=
X-Received: by 2002:a05:6402:42cb:b0:425:d34f:e8ca with SMTP id
 i11-20020a05640242cb00b00425d34fe8camr6828328edc.126.1650799489639; Sun, 24
 Apr 2022 04:24:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:907:9604:0:0:0:0 with HTTP; Sun, 24 Apr 2022 04:24:49
 -0700 (PDT)
From: Marian Davies <mdossa433@gmail.com>
Date: Sun, 24 Apr 2022 11:24:49 +0000
Message-ID: <CAGN-eWdT46uJ8nyeDaXnkhwv19_pudaXrNNpO1jF6Oyij_XAQA@mail.gmail.com>
Subject: Hi
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
Reply-To: marianadavies68@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello Dear.. How are you doing , I have been worried if you got my
first message and I hope to hear from your positive response

Thank You
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
