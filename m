Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B75618872A9
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 Mar 2024 19:09:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B0E08418B9;
	Fri, 22 Mar 2024 18:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gRyUEVTxAKxf; Fri, 22 Mar 2024 18:09:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B536E418C0
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B536E418C0;
	Fri, 22 Mar 2024 18:09:55 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AFE441BF489
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 22 Mar 2024 18:09:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA1784191B
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 22 Mar 2024 18:09:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZfcztgiZo3pB
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 22 Mar 2024 18:09:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::529; helo=mail-ed1-x529.google.com;
 envelope-from=neliswasnazo@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D8782418DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8782418DB
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D8782418DB
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 22 Mar 2024 18:09:53 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id
 4fb4d7f45d1cf-56be32b9775so1230623a12.1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 22 Mar 2024 11:09:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711130991; x=1711735791;
 h=mime-version:date:subject:to:reply-to:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5vcp0J7zk08bcGnG6ixoY9FJh5UMVRDDbvoFP3uqAdc=;
 b=FNPskRU4N/31/YYxItkb01BqlaUUbxAc1H2Ph+kCpOutabvjzLyiM16X35iuBEthgQ
 DQ6K6k7T03sv8GAXlzCfEgbV4SLO9zXVZm7cpJxiztF7dg0uD4TmbiD6nJKbqcPbdp6J
 HGE2tG6Me1Apefem/MdpK0Ka2CTDqXcEonS14eNJzbgYqIGMbWSG+BlcH5CLmR3Nq8ca
 oCfe1stBxAcfdTpFAUQ474kYhSd8s7LBhAa7fEppfYvAy9Lc0cf45qXIIAnahFGOQXE6
 lhQMyBOz/JwEwvnPyCSc/nTdzQVkm2su/H6fq551eEqdJSl8x10Ul6K2/ufDKEVn4stZ
 5Ljg==
X-Gm-Message-State: AOJu0Yz31HU16WS9+U8GajbEMaltwKznsAPJGAnIDyHavgiIFIYdeoDu
 8ozPQHmy+hOR9+n18b3rYaw5LAVNIIJ5w8ePvvk6+QwSAXHJyJv4TuNCAWNT
X-Google-Smtp-Source: AGHT+IFjU5ggxOUNOzEnncVEHN/eMxWHbRo1P/kQpj29Ei9Uujdx59ysvpobR8DsLKWZGd1egJBNVA==
X-Received: by 2002:a50:cdde:0:b0:568:a9f3:b3fb with SMTP id
 h30-20020a50cdde000000b00568a9f3b3fbmr196517edj.8.1711130991336; 
 Fri, 22 Mar 2024 11:09:51 -0700 (PDT)
Received: from [185.222.58.246] ([185.222.58.246])
 by smtp.gmail.com with ESMTPSA id
 c36-20020a509fa7000000b0056bdec673c3sm74715edf.38.2024.03.22.11.09.50
 for <driverdev-devel@linuxdriverproject.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 22 Mar 2024 11:09:50 -0700 (PDT)
From: Teri Ford <neliswasnazo@gmail.com>
X-Google-Original-From: Teri Ford <terrford@outlook.com>
Message-ID: <ef03b194e6c02af9396a8a28278b66ddfee5da2cd7dee3da422d3d9ec9fb9574@mx.google.com>
To: driverdev-devel@linuxdriverproject.org
Subject: ` ` Piano ` `
Date: Fri, 22 Mar 2024 19:09:50 +0100
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1711130991; x=1711735791;
 darn=linuxdriverproject.org; 
 h=mime-version:date:subject:to:reply-to:message-id:from:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5vcp0J7zk08bcGnG6ixoY9FJh5UMVRDDbvoFP3uqAdc=;
 b=OiuI5yQz3qtj17YrzQIcUcOuIIZVFiP257c9vLhicHNzs6VlPgOQmx5RFw+4lB4T73
 Lte4wS99tDEBtphw/euXVmatY5KnzL09Cr7Fdr4KZ0zhhkFxDpHhAFkKkR6tNRlYIah0
 9O0dz4bY/gfySG61K265pKH2Jr2d25mmVlC463CbDhV9rarYg+Z/JrlPk3V5BapUg6tu
 TaRTs5EqzU258pvSGOeunL7NdlANfEGUMyjZY93Gtp2nuSBOHgW4+wx4y+CIJ5UNe8TW
 89mU9qV32ZeyrUEEKZbXoEOhBhrZjM/CPq+0Ij7qh4eSsdpccIYLrXL1iH8lgiJEwc4C
 wxjA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=OiuI5yQz
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
Reply-To: terrford@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

I'm giving out my late husband's Yamaha Baby Grand Piano for free to any passionate instrument lover. kindly let me know if you want it or have someone else who wants it.

Thanks,
Teri
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
