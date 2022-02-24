Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E64C34C2D28
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Feb 2022 14:33:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B360415C0;
	Thu, 24 Feb 2022 13:33:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PzjgzZbLDSB8; Thu, 24 Feb 2022 13:33:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 105E340928;
	Thu, 24 Feb 2022 13:33:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 412721BF5F6
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 13:33:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2FAAA812B5
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 13:33:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mr871qLivLcI for <devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 13:33:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com
 [IPv6:2607:f8b0:4864:20::112f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8CCD581298
 for <devel@driverdev.osuosl.org>; Thu, 24 Feb 2022 13:33:53 +0000 (UTC)
Received: by mail-yw1-x112f.google.com with SMTP id
 00721157ae682-2d646fffcc2so25380037b3.4
 for <devel@driverdev.osuosl.org>; Thu, 24 Feb 2022 05:33:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=1h98u/bN5joq7hLImj9Jy+kYtlUyjs0ZgzpFswkgYBo=;
 b=VoLMeYy4zYVCA3wVh64VKoEoppJ7YRylGWzrMuxBlEOgBQgrkFx/K9kVIAg4nnf38K
 CPUVf/+2Cr2aLRsih0PbK0E+irthYjj6p0tHrUlHuDJJfVOP7uw0oxw1pBFVTqb6cNT8
 difukMCyNuxbOUV5vPVwhCKE13VPT5EzoAZxNPbA9EDCkr/ZFep305YfxDNBowCRTj7f
 EyUNgjV+0kPeIyR+3rS0/21Cfki/v2rkZer6wzrfDb7B7rpETWl+FStkyrA6JOvPOai6
 y+pB5ItXDmGdMPpn4dh+G1ixw/uqihf9GBk7Z0eTLvYL/enIyeia12O0im66Z+5PPNMi
 MLmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=1h98u/bN5joq7hLImj9Jy+kYtlUyjs0ZgzpFswkgYBo=;
 b=TEUo8ETo/QJ3OAq4mOhhXOvXiMbOiYf9c/jqL2cABuXkjNK1iarjkJr4s1U6InmYMd
 WVvWDWXedkKqUnqiDYfQqnGeHJtfXBdEGOqmb2HRasYkhafApRTikzJz/ebp23IPcjTs
 tKxUm83CIOTg7WzePkj3hepwRWQ1p9jMAbKNIOWXwo5KKDQRbOijY0CNSkGLedihuKns
 sapYzIn7wZZxUkDoYW1VN4dphCtsFb8TaOUjrIRgYlsX7hmxj318pCgl06d3e/f9sX1P
 JAu3FlFL2yUArb2iwuQ6XIPQu9xdWOidQQgthETbU3QFULffVZjKggoe2/1ehz1ffUN0
 RK+A==
X-Gm-Message-State: AOAM5335hJk6htXwfdPcdx/LHdhphLchUXGx0Aw25OE8TdJHXo10hhwU
 da4SLq9CVm4JJlpGR8CM9RYNBib42Oxn5IqGsbg=
X-Google-Smtp-Source: ABdhPJwcruRcaAHfPgREOG/E/ZrZHXxCfGH1NMOUYcw7vapxlzf6ja605HpmNOszilOm/Hljl1cfKqGej1bHF/T7Pgo=
X-Received: by 2002:a81:1803:0:b0:2ca:287c:6caa with SMTP id
 3-20020a811803000000b002ca287c6caamr2384169ywy.335.1645709632560; Thu, 24 Feb
 2022 05:33:52 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6918:9144:b0:a1:6ae3:a9ce with HTTP; Thu, 24 Feb 2022
 05:33:52 -0800 (PST)
From: "Howard F. Newell" <gracecomplete123@gmail.com>
Date: Thu, 24 Feb 2022 14:33:52 +0100
Message-ID: <CAPPAyq7pMY-=7aV5nciH83OTThsXPHK1H+VCv6wATJtZBEFoVQ@mail.gmail.com>
Subject: RE
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
Reply-To: howardnewell406@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,
I want to know if you received my previous mail of 28th/01/2022
concerning your compensation valued 681,200 dollars by the United
Nations Compensation Program (UNCC). Please confirm as soon as
possible.
Warm regards!
Howard Newell
London WC2N 4JS, UK
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
