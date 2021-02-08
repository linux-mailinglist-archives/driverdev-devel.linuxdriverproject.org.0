Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 214EA312D8E
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 10:42:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B0F6120488;
	Mon,  8 Feb 2021 09:42:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ESZy3Dyb1xSN; Mon,  8 Feb 2021 09:42:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2919A20424;
	Mon,  8 Feb 2021 09:42:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA5871BF3D2
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 09:42:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C6FC584E49
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 09:42:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QXWtvUzPmj2i for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 09:42:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BC2A084BDF
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 09:42:38 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id f16so11949513wmq.5
 for <devel@driverdev.osuosl.org>; Mon, 08 Feb 2021 01:42:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=z7Z/JdX0RhrlgqchmamXWMY47TIIKUp5Zm0+e0J1lMs=;
 b=M7t1XnWkOFFCe0b72eSK17MK2UmyOMXX0Q5QU7VziRJAmMplZgC2NAQVBFyehX7WKX
 3gtJwFjnK1GnOqdBCG49y0ih412qIGFg+UGIsOgw/MdHQEzhGEYCQ3c9WNugW8KAK3HP
 794M37pX/vAx2APxrlD9GjpPtq73fYBPQRQw09fQuAJSXwDhgipq79CpONOFJZyMUAuz
 tQS3yOsZR1cqXYneKZg99xo989ujxk2OAdlMGgQuXHq0qQ9eQ5vM2OwCNyWhr2zmSMeu
 MN6Wl9r1ssl9GXjm5n5mnygM0ke4/5+VSD7VM9AA0v2pqqWgqN5LUYXp/K+6dr7pqnVc
 gvrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=z7Z/JdX0RhrlgqchmamXWMY47TIIKUp5Zm0+e0J1lMs=;
 b=ILiDmf+dv60a2uzuk9wDMfcthy+ThOmi0T+J3H6aYOcoL8MU+Xa2eixRWrqKTjzPeo
 gotFxcI0Mn0G84inFXn2VzZ9wRmVothlUq3AxxJhSCi1YaTscjKMrkeBCn/CPI/CZvdN
 sBDROcvuQXUjCjwQ6B4zl7GF1IlFGjGpWSiesrFTupRAwxlZscsLlToCta6dCZSmuvD/
 PXVMvzyBJF8TGldx6KrFB/+Ix8Eo1mhDR5sJAIPKuOXlehZ+wHpaRzwWIJ5WOF5maveE
 39P2CuKOmFvnxEnSnvp1UpnKkM/ksG09WHDgT01YuFbevSlMWrun4H9B7nS0rDw/vqei
 RFiw==
X-Gm-Message-State: AOAM532QwUdMbfQWq2djHh4CjukDh/hDiG/b55KHQqee0+HHA9OHYSM9
 xyRddZxVW7GYxdIdIU+85L+OW38ShVvvAIJpJEw=
X-Google-Smtp-Source: ABdhPJwHXjBFfHh6GUHeSU0pS6GtSZpKhr6izt183GE0wZjCV6ME1xUoXdYKmZ/WPvLMD4eEH2XCy/rVnbB+arEBSEo=
X-Received: by 2002:a05:600c:3510:: with SMTP id
 h16mr13633566wmq.156.1612777357169; 
 Mon, 08 Feb 2021 01:42:37 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a1c:2c82:0:0:0:0:0 with HTTP;
 Mon, 8 Feb 2021 01:42:36 -0800 (PST)
From: "Mr. Richard Thomas" <rictthhomas@gmail.com>
Date: Mon, 8 Feb 2021 01:42:36 -0800
Message-ID: <CAHG73zwh4turz5mhmqY-PaTpGF0HubufKLmrK2Fa8j0zcOFxUw@mail.gmail.com>
Subject: Re Thanks.
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
Reply-To: infowebb@citromail.hu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,
I will be pleased if you can allow me to invest $104M Dollars in
Estate Management,in your company or any area you best that will be
of good profit to both of us

Please do well to respond including your information for more details.

Thanks.
Mr.Richard Thomas
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
