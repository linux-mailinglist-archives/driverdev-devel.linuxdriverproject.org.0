Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 344D36D37EB
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Apr 2023 14:48:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9355060E1B;
	Sun,  2 Apr 2023 12:48:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9355060E1B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5pBUtOTwAT83; Sun,  2 Apr 2023 12:48:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 741B760C2A;
	Sun,  2 Apr 2023 12:48:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 741B760C2A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 007CE1BF473
 for <devel@linuxdriverproject.org>; Sun,  2 Apr 2023 12:48:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C8099400EF
 for <devel@linuxdriverproject.org>; Sun,  2 Apr 2023 12:48:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C8099400EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5VcXkzmfVy_x for <devel@linuxdriverproject.org>;
 Sun,  2 Apr 2023 12:48:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0338E400EC
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0338E400EC
 for <devel@driverdev.osuosl.org>; Sun,  2 Apr 2023 12:48:01 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id eg48so107050770edb.13
 for <devel@driverdev.osuosl.org>; Sun, 02 Apr 2023 05:48:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680439680;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NYiXZMh8tEDmaPmAmY9169PBK5CjDH2NQmWeULihDjA=;
 b=YK4LkuFWHEMhN8JTtBD1fehdO8lBsV8IgATbhw5k2mtOaZZP4iFZ2A1BNXkFlbASsc
 Tt3mUP2EkyoShDhI63uMi4djXT1C5e2JSno1oYa0f0pOblC1HDp/iMmglxM97XegZ9bE
 qUc0AgPdsrYohalaF6PnYEsPYVINmvKficlwH036jZ7DaNkf12D/Nm+nLPHT3ZKsA/aM
 6K93yftlP83naxacNywpSd2Db1B5V5WaE4surg+cZZRq4KO1PlpJJ0Ainc6sSlGTSB27
 x9YrBrXoiIv3D3uVYIriI1W20wGH2+2xQEiD06iAZh/R/0CKSmDP0hRWdiTuJKMQJ9D3
 uuoQ==
X-Gm-Message-State: AAQBX9d5IuDT12Jjwdnz4NKAwTau6eY8QLUXMn9U56MmaxX7xBKRBbuL
 1SFg0Q7f0Y/u/MUfPxv3t5YLjVBKW3V94fXeePI=
X-Google-Smtp-Source: AKy350YdKuYmA32zhYxKRc/blp9P7V50yRcHKQkKymMIEgQXA47ATrav6NsZejPQ2PSULrIbrf+YJBsEeDwW+COxfz8=
X-Received: by 2002:a17:906:3a98:b0:920:3bf5:7347 with SMTP id
 y24-20020a1709063a9800b009203bf57347mr9094814ejd.0.1680439679544; Sun, 02 Apr
 2023 05:47:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:907:a397:b0:93c:7cf7:b01a with HTTP; Sun, 2 Apr 2023
 05:47:58 -0700 (PDT)
From: Aisha Gaddafi <kelvin.neil1995@gmail.com>
Date: Sun, 2 Apr 2023 05:47:59 -0700
Message-ID: <CAL6UpNFNL17sgUpd0bAmDLA1pF+Na92OOYDMQ9Acz2qE8vqzeg@mail.gmail.com>
Subject: i wait for your reply'
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680439680;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NYiXZMh8tEDmaPmAmY9169PBK5CjDH2NQmWeULihDjA=;
 b=L8KLLXGuEFQVaqKRGmB8pk1b7/8QCxSL0vfU1z/IXv1etWoz1EkXDvsL6g8Woy9aQ5
 JNk4+jebJCgpLiJocLnlPgAl17NMiiOE1WtWnewLInWMhvBIAWoQ7SHb95g65BnRLoVj
 CV5+rzqdJsKjHNB8xLKY/klhWPshHUEVbxDCN6GED/V6B1DXsFcOWGAJbstwVo2OibhL
 iokJ5IWvOYCjHfPQfjA4ClzFRLh5x6gU8ZUwDjI/0j5GW5g+TgwCSuctWWMXoqgSrd84
 IWJefarrPR+WANafwk6fkQTYYh9j8yztHw3mVVJQbZpG8TU8iHADPur5yvy9OnjT9GNR
 lkFA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=L8KLLXGu
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
Reply-To: aisha.gaddafi0417@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,

In the name of of Allah the Merciful
Peace be upon you and God's mercy and blessings be upon you

I am sending this message to you from Oman, In the city of Muscat.

Aisha Gaddafi is my name, I am presently living in Oman,i am a Widow
and single Mother with three Children, the only biological Daughter of
late Libyan President (Late Colonel Muammar Gaddafi) and presently I
am under political asylum protection by the Omani Government.

I have funds worth $27.500.000.00 US Dollars "Twenty Seven Million
Five Hundred Thousand United State Dollars" which I want to entrust to
you for investment project assistance in your country..

Kindly reply urgently for more details.

Thanks
Yours Truly Aisha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
