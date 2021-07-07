Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 260533BE51E
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Jul 2021 11:07:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 601AA4017D;
	Wed,  7 Jul 2021 09:07:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id raHoONUrd8DJ; Wed,  7 Jul 2021 09:07:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C3B8240179;
	Wed,  7 Jul 2021 09:07:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0BA391BF228
 for <devel@linuxdriverproject.org>; Wed,  7 Jul 2021 09:07:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 00B9A40646
 for <devel@linuxdriverproject.org>; Wed,  7 Jul 2021 09:07:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eUU4_ei7W8HU for <devel@linuxdriverproject.org>;
 Wed,  7 Jul 2021 09:07:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com
 [IPv6:2607:f8b0:4864:20::344])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D4067405F8
 for <devel@driverdev.osuosl.org>; Wed,  7 Jul 2021 09:07:09 +0000 (UTC)
Received: by mail-ot1-x344.google.com with SMTP id
 7-20020a9d0d070000b0290439abcef697so1600293oti.2
 for <devel@driverdev.osuosl.org>; Wed, 07 Jul 2021 02:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=zwBBLE2EXj9nN8H7n2kUAze49k1caDtTjSN9T99Qa38=;
 b=dve9rB3bphLqhwMi80v7pTvXERuWgTUMsjFRueLKQIbGnhnvt3IxmXL6ygDhsqs5LD
 OCxqbSe2ELBurrRRq+FVc3Ugk9ByaLt8XN9FgJNjZc/scMRUJrR/j3KZR5C1/GRgUHSL
 RZjg2gSVUh5D1r/rbY9OUfEcBeGNlftlxT6PLzzdted9SmZN1HNfwNun4wq3dWyrrzz+
 hQ15vX8GVJFmcwNIls3h8ysRUFfAEajjn+07tI1pueNv9s5IEXHflogOoBvgJoH6pRlf
 g8ZjM4uz8o8P3hjuWnG/ri1/7cgT6JvNYs/8LCMYEdI/JnSrgWm+VQUN+AAw7DMGpxpc
 bwJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=zwBBLE2EXj9nN8H7n2kUAze49k1caDtTjSN9T99Qa38=;
 b=OaAhveqzbERjnueFNTUR0x8qU6rCDs4pTprQ78pEtcYl5trf6IdMZlXScpMQuAPGyA
 OLLGBvWKHtOtR63bKNPbz/66RykraQwOzNhDnY+qMqV18n2uON9RDatuQgVqINfcAPV1
 RY+/YFpG2Kpa5WYfhh0mzpjP16XleY15dNYnd9O0tyfkk0O2aFtugIFS3n4MSmmUFPeo
 rijKpfyJ2Q7yYdk0I+iCnY01dBuLrIpoSXx7kaW8n7Vq6mV4FP5DuTv8HiotbFRSk+dG
 FaAv/KKNk1BBkj6aYUd9ag1LFxgQTUHiZ/FsQVX75pbMAk/Bcb9Zd1LJe3t+sX5+eyzP
 2VMA==
X-Gm-Message-State: AOAM532ADqdZHPtTOSKjpBtC8eIseUi3cZsulpCpNmolzNGa7l3aSxDY
 jNwR9eZH895R77RXmXcGMHq/F3qFVj6KwH9B/SU=
X-Google-Smtp-Source: ABdhPJzXcmU+K+magXC02uWsjdsDSEmpZ+5YjguMUeOEMt9rbAs0AVVE6m99US9pnQh4EHHBP1h/I+AG5mlBX8gx5bo=
X-Received: by 2002:a05:6830:1f55:: with SMTP id
 u21mr18602437oth.4.1625648828973; 
 Wed, 07 Jul 2021 02:07:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:720a:0:0:0:0:0 with HTTP;
 Wed, 7 Jul 2021 02:07:08 -0700 (PDT)
From: "Mrs. bill Chantal " <scottpeterson671@gmail.com>
Date: Wed, 7 Jul 2021 10:07:08 +0100
Message-ID: <CAC9PqjLOZRyVxxnKNgmbQVb5ja0=QQ+rqowXGRKyXpRx4J_4mw@mail.gmail.com>
Subject: Dear Friend
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
Reply-To: mrs.billchantal278@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend

You have been compensated with the sum of 4.1 million dollars in this
united nation the payment will be Issue into atm visa card and send to
you

from the Santander bank we need your address passport and your whatsapp number.

Thanks

Mrs. Bill Chantal
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
