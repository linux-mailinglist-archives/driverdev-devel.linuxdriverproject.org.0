Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 342F165EF91
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Jan 2023 16:01:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E00E60AF1;
	Thu,  5 Jan 2023 15:01:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E00E60AF1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jdX6oG2uI3-x; Thu,  5 Jan 2023 15:01:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7915260AE1;
	Thu,  5 Jan 2023 15:01:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7915260AE1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 06E661BF31B
 for <devel@linuxdriverproject.org>; Thu,  5 Jan 2023 15:01:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D640B60AF1
 for <devel@linuxdriverproject.org>; Thu,  5 Jan 2023 15:00:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D640B60AF1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mt1XtMT3NF8v for <devel@linuxdriverproject.org>;
 Thu,  5 Jan 2023 15:00:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 762DB60AE1
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com
 [IPv6:2607:f8b0:4864:20::b36])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 762DB60AE1
 for <devel@driverdev.osuosl.org>; Thu,  5 Jan 2023 15:00:58 +0000 (UTC)
Received: by mail-yb1-xb36.google.com with SMTP id e76so3865549ybh.11
 for <devel@driverdev.osuosl.org>; Thu, 05 Jan 2023 07:00:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7JT2Gt7y/M3YLHVCyMzZwNsFe1p6EOvnpVpu2gl496w=;
 b=Igwora5UkB0ixY6SW7Qcahyx9zhmwR5mKtRUuOZTNFQv9xCKUyF+1LnBgiI3HoQTWf
 VI4WllmmS82U5GF/Q81xtZOoicCiRPnljA4ZTbdpW9wjXt3LPbskR8Fc80QvGvl3d1rI
 vIhPeS1JDqdiCDarwSfJBe/hgGlAMqaZabTVFiDqceNmYMmqETD/4CuG32ljS+4ffyCm
 Tf8TmaLmWILH3OGvuV72p9u85BqgkICNlL5iQpc0X0J2fC0rZBnDtffeM+y9RIXw9TAg
 YzfFHmcEOLiKOwtszJLUby8HPhekQo0no2i/Nm8kqdIapuzlplARdrGmb8FidXZyT7pF
 saaA==
X-Gm-Message-State: AFqh2kqF3MW1a0K37G1jL5TeNnoUYTlo7bT8GcJkR/3g7J4DnEvfWLvF
 dFSXxob+vB3wRdVxkTNwdEi4SkEWaW2tV1XJKeo=
X-Google-Smtp-Source: AMrXdXtJxHAxofkfpex8ul/LImkG10Ceq7Y0iNch1oseg0msZcQTS0OLGqqOmBgVK3g3z3DQ5gE7fZVvqNvAjOyqukE=
X-Received: by 2002:a25:bbc2:0:b0:7af:fbd6:9349 with SMTP id
 c2-20020a25bbc2000000b007affbd69349mr794651ybk.315.1672930857226; Thu, 05 Jan
 2023 07:00:57 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:a213:b0:321:7f6:ad55 with HTTP; Thu, 5 Jan 2023
 07:00:56 -0800 (PST)
From: Western Union Agent <akakpo037@gmail.com>
Date: Thu, 5 Jan 2023 07:00:56 -0800
Message-ID: <CA+ctXwpTJZKrU7iUWiYDWQbpy0bkRj9N3tZyXRjv==UGkwYWCQ@mail.gmail.com>
Subject: Hello
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=7JT2Gt7y/M3YLHVCyMzZwNsFe1p6EOvnpVpu2gl496w=;
 b=gm+Qa5lH4CXxHP+puF7OfioQocA1kUEEhV5VtVTSlvhKAy8H9LP2zL0I4KNzkC5ypi
 wpj/YAi3q/O2YY9PWrP/+rs0jQrGPhgI33PVx51+eLGiUB9syC+cSCA4dXLuPJCxYcYI
 wRXe3dZ/XuXGghOFvF0WYfVOWiVP65RXH+wa79q4AJYuFjPEbr5cx3wLnwLgv3XskIkp
 z66wGwatGg6TpDzOkyfNNYvXsdTynW+18Cl1Q0DTmCTgDK5HtZpXliuoxw4j4enUusVS
 9hfk7Ces0x0MzeUST+lrXno6TxSL6YJip3ZaVjJAtqzr2zmr92YcWLeIUlG+HcHOTcAA
 fQZg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=gm+Qa5lH
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
Reply-To: westernuniontransfer277@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good day dear,

This is to let you know that your payment is ready now, but we need
your details now so we can complete your transfer today without
no error, so please try to send us your information now
so we can continue.

We hope to confirm your information now.

Cheers,
Western Union Agent.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
