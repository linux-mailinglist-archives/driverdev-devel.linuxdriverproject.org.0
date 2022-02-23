Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54C74C0795
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Feb 2022 03:07:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 17E7840579;
	Wed, 23 Feb 2022 02:07:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0wwDCbixz6Ks; Wed, 23 Feb 2022 02:07:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9C9B040260;
	Wed, 23 Feb 2022 02:07:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB68F1BF359
 for <devel@linuxdriverproject.org>; Wed, 23 Feb 2022 02:07:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D4BF160EEF
 for <devel@linuxdriverproject.org>; Wed, 23 Feb 2022 02:07:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xiwP91Ud7gMA for <devel@linuxdriverproject.org>;
 Wed, 23 Feb 2022 02:07:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E5DF60EE0
 for <devel@driverdev.osuosl.org>; Wed, 23 Feb 2022 02:07:01 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id f37so28335566lfv.8
 for <devel@driverdev.osuosl.org>; Tue, 22 Feb 2022 18:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=S3JtR5HtN5TgHtZRkOpXh8ju3yrdK90cRx1M8SbEib4=;
 b=KaqUXcanNtPijJ+ehRhUXk5+3YMhiqxwtQu6fcN7Sxur69qLQTUt0BaxaLxLbuDRtx
 JrAYzjEln/GUxyKTdJYf2SWIsa9dU87JDAnIq+k6may6jNJmIkkxz9J/NFSvUWhpdVIC
 Cms72ijPiJTkv+cdz4M9M0ya8omdR36K0jyjIuvwLKcIQSgpv6xIvXzgQIPWFgk4cvff
 meZTLHVGpt9z5uA8vY2R3M4DXXCOj31w3eGqJkXQyDwFzeOUTlh373ylzLgFf8KyxhGe
 KafbwMxlvXFM9VIVFrkheOc0yqrJj6jjqCIdQ8+lJtZugEcJ2eeR9E6QgcLjmJ4tb2K1
 y7Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=S3JtR5HtN5TgHtZRkOpXh8ju3yrdK90cRx1M8SbEib4=;
 b=sW95b4TZtxHnvt5FsuXmBpPAC0d+JGzsRvdQhlGVbPhMte+zuIk/wH/qrQxUDN9xGg
 k/vAaIpcMO8gh2wYga+UcN5parHO4yGVVS+mn2bsc6ytEOFDB5frEdWzMJrsEUdjky4f
 g9aqw3DDXBk0RWe35ugudcyrMTNLF2bLIquYNvz+iRAcV+A59GlPxWsNNWa9qelP16SL
 1fZAVgT+CMpkRxJ/sjK5DCMTc5XjoCenO2cGDQ3ksPcSwhT3wBIiRw4Sh31LNQGMOSA6
 qtNv7rjYxOgsZBudxlUzhByP+MerIrsGSMJAktZXU42JlyqXfoGaC2iqz0ES15ptLsp/
 iQXg==
X-Gm-Message-State: AOAM532FJTWk4vUWDk2uDzrBe46W3ejuGq+pX5cYK75rVp6iRXdFoO78
 8aQji7S0r/GxsRJ0PYikp045vU4YcP0/F5SA/h0=
X-Google-Smtp-Source: ABdhPJyWYgmV4fFugYfxD/x3GGDjVznDq6gFlz6o/HE6GddN/dJqNUaYyGn0mg8qzGHZ7EYJOTuK78JsDmI4JjZ/V5I=
X-Received: by 2002:a19:f00f:0:b0:443:ae5c:47d0 with SMTP id
 p15-20020a19f00f000000b00443ae5c47d0mr17755890lfc.332.1645582019310; Tue, 22
 Feb 2022 18:06:59 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a2e:6f07:0:0:0:0:0 with HTTP; Tue, 22 Feb 2022 18:06:58
 -0800 (PST)
From: Fiona Hill <xaviergbesse.2020@gmail.com>
Date: Tue, 22 Feb 2022 18:06:58 -0800
Message-ID: <CABEvWU+YBfqpgkJ=zR3ewLOUERZNSWK8GHtcxFW2VCwNrMyKRQ@mail.gmail.com>
Subject: 
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
Reply-To: fionahill.usa@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Please with honesty did you receive my message i send to you?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
