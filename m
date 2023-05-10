Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F966FDEB6
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 May 2023 15:39:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2967B60BBB;
	Wed, 10 May 2023 13:39:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2967B60BBB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gUVoGi2msz2I; Wed, 10 May 2023 13:39:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B4A26155E;
	Wed, 10 May 2023 13:39:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B4A26155E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 246461BF321
 for <devel@linuxdriverproject.org>; Wed, 10 May 2023 13:39:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F200784177
 for <devel@linuxdriverproject.org>; Wed, 10 May 2023 13:39:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F200784177
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pqdl49CYlnTA for <devel@linuxdriverproject.org>;
 Wed, 10 May 2023 13:39:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 631358413B
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com
 [IPv6:2607:f8b0:4864:20::b32])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 631358413B
 for <devel@driverdev.osuosl.org>; Wed, 10 May 2023 13:39:34 +0000 (UTC)
Received: by mail-yb1-xb32.google.com with SMTP id
 3f1490d57ef6-b9a7e639656so10804033276.0
 for <devel@driverdev.osuosl.org>; Wed, 10 May 2023 06:39:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683725973; x=1686317973;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=CmlwvXEoimVTfsyyyYai0GQlqo3zzXGhdH5Gfvmx5TY=;
 b=NqAZU2vEJDlY163xBxABn+yiZ+Bpk3mcxGF7jI9qz5g2QCLbMPNwpqiJCRM4wsNs0Q
 Xfd/he6wm0WhGwoeSoKvQlnjiW2lpKQAAiVp0/SzDGv79j5sCGYLwaiGWrmcwuy3N8Tf
 /7IdDPqmA+p9o7fKE8ktDEFqS9F5nyxFl5LiIfbKWVjBJaz/yPid7/yfaprn4coyirU0
 vp06Cf0onrcAtMK8nz6lyRSvWDBMb1YnQsVUtkIsXElbF2V7AMllwNYrE/RsmQqeVHBV
 04O6axdYq2UKBwyHAaa1qILON15vSJkvV6uFhP6s4oho4wDat9YZBL2wfaTpGmtXj7MC
 bP4A==
X-Gm-Message-State: AC+VfDyR8Raf3hqpYSpq4JzX/W1qGooMd7RGO9+/CwJ87KTSEYI0dOtA
 wBLu6sm1ePCElxF5gBZgC1uZatGr4SxQeTtTDZM=
X-Google-Smtp-Source: ACHHUZ6mUBDTXiyxPRfxYoL6NXruEvwQFS8f03RP9eqzLE/zdlV6LhsDwW0zgXhCn35oFRt4ejzl9Jt7rq815naVy2Q=
X-Received: by 2002:a25:1944:0:b0:ba1:86ea:9b04 with SMTP id
 65-20020a251944000000b00ba186ea9b04mr14748152ybz.39.1683725973190; Wed, 10
 May 2023 06:39:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:19d6:b0:4c8:31f6:3644 with HTTP; Wed, 10 May 2023
 06:39:32 -0700 (PDT)
From: nina coulibaly <coulinina15@gmail.com>
Date: Wed, 10 May 2023 06:39:32 -0700
Message-ID: <CANZxeNNg+HtqvgxW=oKdY0wRDw_gHv_Shr+UQMDu4JhqM-ftXw@mail.gmail.com>
Subject: from nina coulibaly
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683725973; x=1686317973;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=CmlwvXEoimVTfsyyyYai0GQlqo3zzXGhdH5Gfvmx5TY=;
 b=D66YDajc5ueNRysImYFvp5amkMdUgF1oJXYBnBcgeqVVuYV67a4zONhdWKAmfVNwkb
 JzKkiL2VHBF7WguLu++tBX/GJXYtf9sSPbP7InQ5IHq1fw5984S8Av9bZLO7uTu8aXWO
 jujRgllJozUWa6rhOQ57easz/jLimsQkPaMKYKOPtD4MaYoQF+X4dlAl/sRkUeymYPlW
 DYpvKA3FaoHMtjgFNO69IKZA0Wu7jCzPpN6mEZ/jCKfhecMlNVRGUccupdm+lj1N/pYy
 lwabjEZ/6gqk3aLcAXcYj9f9E3ZFwQmyLoHMrtB7b5u0O7aTHPOZj80pSBbqirpU8tZ9
 erIg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=D66YDajc
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
Reply-To: contact.ninacoulibaly@inbox.eu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear,

Please grant me the permission to share important discussion with you.
I am looking forward to hearing from you at your earliest convenience.

Best Regards.

Mrs. Nina Coulibaly
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
