Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0C9537AA7
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 May 2022 14:28:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED04F41A40;
	Mon, 30 May 2022 12:28:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X3hM3-YacNcs; Mon, 30 May 2022 12:28:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C22541A38;
	Mon, 30 May 2022 12:28:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E1C141BF425
 for <devel@linuxdriverproject.org>; Mon, 30 May 2022 12:28:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF6A0403AC
 for <devel@linuxdriverproject.org>; Mon, 30 May 2022 12:28:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FWiZqwepie-P for <devel@linuxdriverproject.org>;
 Mon, 30 May 2022 12:28:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com
 [IPv6:2a00:1450:4864:20::642])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 82E00400A8
 for <devel@driverdev.osuosl.org>; Mon, 30 May 2022 12:28:17 +0000 (UTC)
Received: by mail-ej1-x642.google.com with SMTP id jx22so20410941ejb.12
 for <devel@driverdev.osuosl.org>; Mon, 30 May 2022 05:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=WK6OLngTEGMQZnXAmgyK8gksEaTtYBKX+MRhgq0dtFw=;
 b=PcJwtryLa7wkV0F1d8/AjWbR0bbjSKVCNbDJzrw9B8TgB7b8lB74aARsXx/mU2DGa2
 ucY1EPcKzclftFko0MfbWByFWbSnojEEiJtIfK088QecOwNZWxXr362QhPxJYRAaDqiV
 abwGgOr6G7nmspajlYWkP8FRELMd6mb4Drg9Qz7LPzGcIi5S6+uIFeENtpdn2i+1WBww
 LkH3asOgC9XTdK14EcjwsWSpncWPhngPkzWvyELFJKtWR8VdU0Bz99Ez+wbJQ+o0zov7
 dwsS8D7hOLn6hEgY1+m2YCXlqwaQdX2bI5tEDST94+IxRPdo3ADIzmemr00DyHTYD0jy
 lIPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=WK6OLngTEGMQZnXAmgyK8gksEaTtYBKX+MRhgq0dtFw=;
 b=IqjFttC7DcCDf2r10V037nrLWtniXqtLWqsp5zPR+Krg0Xd2Li4fcp+1uGPSMULhOE
 JiNXj5/VRp1Nz1+x7cTaSJGVKcLYigt1C6u8h3S/pZJp7jSqXC6A3MNrr4AWtcIvoyl8
 6qxaOk8f2RZnTcuE07zx4hWxHLB/s+vuESsyd0ayRntI5l+jfOiiJSDl7FB6iLynui+P
 4z7V5s09YLtjCGhrph/wW/tr3qkfSTeQ/5ZwYQaMvKDkP4CDYyiFiKYHVmjuzv4qlBKn
 cDE8M58BxTjJrxlYDgOaJHixXz/J+IouBZRP8ygtbzcCpzBNZS15YpxaIPyCZZ7QfIGc
 STcw==
X-Gm-Message-State: AOAM530WPSvejkCCYYqsfUw8TEoCZAq8rFERdURZsVsuchR30d9qJmxq
 141lJ9TfV92fxg9h1M887o2MbM7Yqpj6Mw4LlSo=
X-Google-Smtp-Source: ABdhPJymjR6Mlp2n5ChNTDdfjUqn6Qrs2xZsDqvxtefmCN97MdNsu6aMekgoUOwd1LzG6sNeRsg5yxbb34mAm2/70XM=
X-Received: by 2002:a17:906:b0c5:b0:6f3:bb5e:54a8 with SMTP id
 bk5-20020a170906b0c500b006f3bb5e54a8mr50419679ejb.534.1653913695549; Mon, 30
 May 2022 05:28:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:101c:0:0:0:0 with HTTP; Mon, 30 May 2022 05:28:15
 -0700 (PDT)
From: kenth live <kenthlive4@gmail.com>
Date: Mon, 30 May 2022 06:28:15 -0600
Message-ID: <CACHSKTrFgL=eKAa+QCJNyOSakS70rFSug3hHaMOm0Ag5bKR4Rg@mail.gmail.com>
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
Reply-To: sgtkaylam28@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Greetings,
Please did you receive my previous message? Write me back
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
