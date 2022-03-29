Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4114EB5F8
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Mar 2022 00:29:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B1E8540C26;
	Tue, 29 Mar 2022 22:29:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oXT7Yln7SmU2; Tue, 29 Mar 2022 22:29:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 710FD4011A;
	Tue, 29 Mar 2022 22:29:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6C4801BF2F1
 for <devel@linuxdriverproject.org>; Tue, 29 Mar 2022 22:29:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 59F1561060
 for <devel@linuxdriverproject.org>; Tue, 29 Mar 2022 22:29:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PJgs_PFkj4Z7 for <devel@linuxdriverproject.org>;
 Tue, 29 Mar 2022 22:29:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A3E9B61049
 for <devel@driverdev.osuosl.org>; Tue, 29 Mar 2022 22:29:52 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id r64so11187999wmr.4
 for <devel@driverdev.osuosl.org>; Tue, 29 Mar 2022 15:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:mime-version:content-transfer-encoding
 :content-description:subject:to:from:date:reply-to;
 bh=+v//v9bV1cKxYYqp6E5HrJfuFydY/JXcjMGnmfr7lM0=;
 b=Ebae8FwkrlJlE1BFNq+ANJECj4FooJVHM6vLRMyMFjUkHh5JrrmFRQ//T9pqlqC+Wk
 h12chq/RmrWlMaM6LM4ntSpHfxLYhQhRv5ftWfmRebLNFl9TbbZiBMRY0PTujHnMvPVp
 qQSw6FYnkWNaCp0eA1iLQqT9dDmEbB2bP9S/lMloj6dyyB4cauhtq08rfIENSUrJpxtU
 gTYhvl+ZPYHhBaflHY73L+Lr5YZRDqjfB64g+H1YsxUvhzUoQ5GvU1/9z3whIhBehrmp
 f1MNd1hceXcsVB32sDA6ufMB0/6wtzLD+K+K3vB4ikKy+CXvxKInB/yG1xqNaihI7nvi
 5Jrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:content-description:subject:to:from:date
 :reply-to;
 bh=+v//v9bV1cKxYYqp6E5HrJfuFydY/JXcjMGnmfr7lM0=;
 b=ADwf2uLXEjOxGUaD8wUqfsjfQAAYvSn4i3gFIvS8Xqolp9kls0TGGFHU7HvYIe8dSk
 TlkyrqqGDnuxbso5gOInEwoAp2ZZn1OhssQ2UHBcseaTFWdLFtxXTNte5Wn8EraAEg1z
 W5bCO2O92cB9taig4RM12Ca3UhLjGQB1+4C3vMcYs5M7xssHH0HCnMtH/UZUetCNprTX
 alJPU/7D/KPioYjsqwN4SXL366HmghcB7mw4+0nEtxzA7cNG7/QWgFpLEax5e3tZnyhH
 mKg22NPOReBOhnDGSAFwZBu7pK8kTvsJjkckFZ31XvNURhzjuQqhwlOCFvkzouglR2/D
 Y46Q==
X-Gm-Message-State: AOAM530ZNktWiLVKRk8aMl2ANeOWmiQg5YkE7xFNywDQ4HA8zsJxwaDD
 LCgk3VW41gnA8/ZZb5c34wM=
X-Google-Smtp-Source: ABdhPJy4aC73DHPUdZJDBFbPOL7n6cEDJ4B2MzETLotYLSuFf4cVS1J5JW5BCrjgowSndl+4WwGNJQ==
X-Received: by 2002:a05:600c:5021:b0:38c:70c0:80e9 with SMTP id
 n33-20020a05600c502100b0038c70c080e9mr1567338wmr.91.1648592990855; 
 Tue, 29 Mar 2022 15:29:50 -0700 (PDT)
Received: from [172.20.10.4] ([102.91.4.27]) by smtp.gmail.com with ESMTPSA id
 n18-20020a5d6612000000b00203fbd39059sm16004923wru.42.2022.03.29.15.29.46
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Tue, 29 Mar 2022 15:29:49 -0700 (PDT)
Message-ID: <6243885d.1c69fb81.4d4fe.f2d7@mx.google.com>
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Gefeliciteerd, er is geld aan je gedoneerd
To: Recipients <adeboyejofolashade55@gmail.com>
From: adeboyejofolashade55@gmail.com
Date: Tue, 29 Mar 2022 23:29:40 +0100
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
Reply-To: mike.weirsky.foundation003@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Beste begunstigde,

 Je hebt een liefdadigheidsdonatie van ($ 10.000.000,00) van Mr. Mike Weirs=
ky, een winnaar van een powerball-jackpotloterij van $ 273 miljoen.  Ik don=
eer aan 5 willekeurige personen als je deze e-mail ontvangt, dan is je e-ma=
il geselecteerd na een spin-ball. Ik heb vrijwillig besloten om het bedrag =
van $ 10 miljoen USD aan jou te doneren als een van de geselecteerde 5, om =
mijn winst te verifi=EBren
 =

  Vriendelijk antwoord op: mike.weirsky.foundation003@gmail.com
 Voor uw claim.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
