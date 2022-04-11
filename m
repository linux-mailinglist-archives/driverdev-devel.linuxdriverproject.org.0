Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 211BB4FB881
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Apr 2022 11:52:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A61A260C2D;
	Mon, 11 Apr 2022 09:52:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ex53Yt06wBif; Mon, 11 Apr 2022 09:52:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AF87607B5;
	Mon, 11 Apr 2022 09:52:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0AD2D1BF44A
 for <devel@linuxdriverproject.org>; Mon, 11 Apr 2022 09:52:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC3B04025F
 for <devel@linuxdriverproject.org>; Mon, 11 Apr 2022 09:52:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id POrsNtruUEQJ for <devel@linuxdriverproject.org>;
 Mon, 11 Apr 2022 09:52:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com
 [IPv6:2607:f8b0:4864:20::b42])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2830B4019F
 for <devel@driverdev.osuosl.org>; Mon, 11 Apr 2022 09:52:35 +0000 (UTC)
Received: by mail-yb1-xb42.google.com with SMTP id j2so26548801ybu.0
 for <devel@driverdev.osuosl.org>; Mon, 11 Apr 2022 02:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=TC9duoRJD6vnrBRMT8QLTFgrOm1tKmnZ9BKvDqV54bQ=;
 b=aoVf2KWY3M3FsUyOBc+tW8Jl5gmxA2VJs5FpBd/25nksaV9/1eb9elsGClY9cmcX06
 4r+/y2GXexH9BjAL4giObzj/J1G1oodgOj1n8TWWymzjgnwbQwuyVAzIBGNmGf7GAoTM
 4z6iI4o9HbO4Ir/aLuCXzj6b9Sym5oE1xkgwjnsE6aRA2JaCIs6RgXEvirSBpCZSDRsb
 x87J91+7bHpnWI48jT24lAJLpsVnDu/RpcEhtVSDK8hEx8yq2rGe0U/7FJz0Ed08Lqnp
 mN41IwPYmkVT+vh/6+bf4sQMPiZM+IGVvuXh6vxsI3roWr0B58R9KTMPkasjF/aSOQOd
 mqKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=TC9duoRJD6vnrBRMT8QLTFgrOm1tKmnZ9BKvDqV54bQ=;
 b=NBJZD/l2f3SlFWhS9a4Q98UatOKcFZ9kkNN9m7BRc+uiD4VTNaROMtRdOXze4tTa5R
 Intsqc5UBNegO0tnOxUx8Ag1kIfTGZ44XXPbJgxAzW9nnwQb6xaElA4JuNgLsSN4qOAP
 sqN5m63Dk7KZmJyyhpSCLfcJwb5c1DXkQSuHV2a0gPWVCpwli/shGuXn1p2UjTBxhlhL
 +K7w0flrA5gP8H8TBLPV0iKxYhPbx137mnZ1Sv8C/uHsj8xFQmoTM8dp6BCV1UfybxWX
 xAMlajeLvx3sC72kB+O3RCTQ8xWg6IQRtEA+8MyW9ElkVL+31rZSXHg8Xynj9nGtapjE
 hFpQ==
X-Gm-Message-State: AOAM531wocWVMac2BdcJGA2vb/XV4su+5M7LcR8sqiqiQCLD72NuOgYI
 rqdN3x6VQtl0fJ8eNPKnemXoB4ZboDlHp1Nkr5A=
X-Google-Smtp-Source: ABdhPJzFkoAXL5PLp4jmNQouxFacT1uCz7z1q6UGmyF7kEmHmjhvLrM7fS/6UUzaHSmGcIRwWjLFNDbSS7bY/Q1RJd0=
X-Received: by 2002:a25:7256:0:b0:641:5deb:b1a5 with SMTP id
 n83-20020a257256000000b006415debb1a5mr2633735ybc.246.1649670754034; Mon, 11
 Apr 2022 02:52:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7010:2386:b0:238:a83c:d622 with HTTP; Mon, 11 Apr 2022
 02:52:33 -0700 (PDT)
From: info firm <infofirm22557firm@gmail.com>
Date: Mon, 11 Apr 2022 11:52:33 +0200
Message-ID: <CAAAUdCuxCoTdtPcEnrXKHPvFdVqYLv6SYVkUNkk++hicd5+CtA@mail.gmail.com>
Subject: Attn: reply me back
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
Reply-To: michellederoma422@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings, How are you doing. I have emailed you earlier on without
any response from you. I want you to make use of this $640,000
donation o restore hope to families and individuals that the pandemic
wrecked in your area. offer from me to you. Kindly get back to me to
my official email. for more details: michellederoma422@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
