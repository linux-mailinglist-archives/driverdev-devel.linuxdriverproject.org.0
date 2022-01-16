Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5726A48FDB9
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jan 2022 17:02:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CBD49405AF;
	Sun, 16 Jan 2022 16:02:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o9oCUukm0l0I; Sun, 16 Jan 2022 16:02:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C45B401C9;
	Sun, 16 Jan 2022 16:02:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DBEDE1BF346
 for <devel@linuxdriverproject.org>; Sun, 16 Jan 2022 16:01:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CA6D7401DB
 for <devel@linuxdriverproject.org>; Sun, 16 Jan 2022 16:01:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ci2ryABtlXYP for <devel@linuxdriverproject.org>;
 Sun, 16 Jan 2022 16:01:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com
 [IPv6:2607:f8b0:4864:20::f29])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 39F7D40196
 for <devel@driverdev.osuosl.org>; Sun, 16 Jan 2022 16:01:53 +0000 (UTC)
Received: by mail-qv1-xf29.google.com with SMTP id hu2so15606461qvb.8
 for <devel@driverdev.osuosl.org>; Sun, 16 Jan 2022 08:01:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=4vfQyttDdobHbBrio36ZO852PxT9+1cO/BhU8vf48uk=;
 b=LqVCzOoSZ2QWYa59PyTywXkTFBjbvWqhVGkZiAIKZXc1ieGsf/9MZgqIHHCJ2YISOj
 m0lLBsTYqWW3mcRsJ2aqGVTn40lwBPfD7wvL3IpGAdgJj/xqtC8sYgOIDNEdN2UqpKiA
 zCGakVTwcrPzP/nZsld/y6ew9D07DnIzYlSqSBl6bsGaMlTtTHS8J9XJXFDAir0D3Jlt
 lvmiNyCkWSZFkp6iw6aI5KHJWOwm3DRPStH7KXUUyQ93RSZtXE74qxnYmTgXcFa6WlxI
 SbYFvMYiVLPdirQGXpI4ZENm7mnRKMb4VpFquG2qsKWEAE9tMXShsxNIYGHTgvzzWaF3
 COMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=4vfQyttDdobHbBrio36ZO852PxT9+1cO/BhU8vf48uk=;
 b=zwD78YgoLWCC8G/7jN0Bic8MhgnfS6QnAUc9uVYg0p+eiim325XCDKVc+pcREyHY85
 c6javs7Aw6HXF/nY9wUGeVLLZe73/OB+WPEfKPdIB75OvkhOyMiJb0HyIWZ1q5zwgY3F
 kwFnx242c9tAzI6lkQEOFMnuPwkqU6FTbqhSDmI425mHpJXmgQ3iwuJDxz39UNV5WEdQ
 UwW3gbL+TMfJ7vLRcfDcIl/rVe8f/YQOXPMZBNKW0YQnxRkEOkhNBDxciFGjUEiSCJky
 bZonL5IPCEdNEK2knDLU1pgDVbTxSn6Xc/bZAyRMT/sKyLngMy0sJZn+EQQT4adidvsy
 CyFA==
X-Gm-Message-State: AOAM533a5FW3aezfWwiRDNLnx1WYcbjwCg/6u51FHLHJV0lN/3HvC/cl
 dCm1VK6NaHvVtO1tcjdYtoHBOcgUPSSgLj4A4dg=
X-Google-Smtp-Source: ABdhPJyivuXv/kL8eQskAj5ZaLLmt7Cl1wkhvw64Ekb36zmZfuWb4UJ9t3076RhyR93UgaVWJqqMl+vdNg6BJatBsc4=
X-Received: by 2002:a05:6214:1c8b:: with SMTP id
 ib11mr15791581qvb.82.1642348913017; 
 Sun, 16 Jan 2022 08:01:53 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac8:5849:0:0:0:0:0 with HTTP; Sun, 16 Jan 2022 08:01:52
 -0800 (PST)
From: Hannah Johnson <hannahjohnson8856@gmail.com>
Date: Sun, 16 Jan 2022 16:01:52 +0000
X-Google-Sender-Auth: pJf0dba7xsJ5EzZBuNVTDWSkBsY
Message-ID: <CANBqjYa=A754Y13vEHCvE88mLnHSgto1ejK0q8099+5dt6SsUw@mail.gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello
Nice to meet you
my name is Hannah Johnson i will be glad if we get to know each other
more better and share pictures i am  expecting your reply
thank you
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
