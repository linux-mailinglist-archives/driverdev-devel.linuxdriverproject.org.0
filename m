Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3555250C931
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 Apr 2022 12:31:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBBA0414CC;
	Sat, 23 Apr 2022 10:31:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KLjF3uhtxQb1; Sat, 23 Apr 2022 10:31:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 571D9410E4;
	Sat, 23 Apr 2022 10:31:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BF28E1BF84C
 for <devel@linuxdriverproject.org>; Sat, 23 Apr 2022 10:30:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BB72A40470
 for <devel@linuxdriverproject.org>; Sat, 23 Apr 2022 10:30:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DPqXQD3pwJXD for <devel@linuxdriverproject.org>;
 Sat, 23 Apr 2022 10:30:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1113140332
 for <devel@driverdev.osuosl.org>; Sat, 23 Apr 2022 10:30:57 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id bn33so12369926ljb.6
 for <devel@driverdev.osuosl.org>; Sat, 23 Apr 2022 03:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=RWKuJ5AYtJdYHUnEbZr4suRBaULu4acHowP8inq4EZE=;
 b=pV5OnKrDwd3mLGuwW+jUphgRI0TcUBwcDWnZGkBYiPKVmzh/tlqVBati5Ex88Db/a/
 H1xZM7j53nv1vG4LBxNbCQGvkP54CdZdbT7Jebt6U5d1r6jQIytSwuWsk36WRYxqufkE
 z2OGYVs12TICp3ICpy25mL9jEuJ+CqAnh9VrkZceoOGj7efyKhtW51P6MO5eW1lSAAPB
 /A2pat7pRoBVEti312NAni9kXmiqUn+2QCwJCnwg+8Kg2qaL1kMoWtDH5OCqhk9ceiUB
 LeEDLVluqejc+bDBWJnpciNnhXLDWHvYQVeK0WPIQfGVVydc5y79aMFK/ZhAvcpeML+D
 xd8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=RWKuJ5AYtJdYHUnEbZr4suRBaULu4acHowP8inq4EZE=;
 b=vyGAjSF7EKDT4TYQgK/bpxwdKLNfyMjx4a8ZBgxFdMqG0FR24c4khYk8IwXCyMWE2f
 96GwJpKsRh6wPE2kbfQSistlVzz0iqhiEm7+PdLxxBpNGAJq+/P2fwwk1i58r0HRcK0m
 iTMKD2YetFUwqrZ/FtLlPmk+ebFWtLv01xJJ9axzj5HDGJzK2sOvJdNZ5Uf/7k8lRsYY
 2U7p6LA77dLOfQmLysRpNXJ6yABvJW0CMUoy3nWtNilhl6WG6AiFV+2Or/zcIHipRowl
 7737jem6mAXWr7AwHyQp/VC2oOzWIs/epqczz+gnDEFH5y1daEUjod1coetSlNLzsky4
 v81Q==
X-Gm-Message-State: AOAM532no1+sB4sCXrZi+PPP+cthyA1GM7sMO4CtA3B+qPLDHu7Qch5Y
 2hKqDAOrbf/ORAHvjvsiormI8YcNSfAYNgcL82w=
X-Google-Smtp-Source: ABdhPJzXycoF0yVrb6kfv7vIZtfIlbKitfZ1nVWOnjrwi48oRLD1EzpTkAL94qwxbyIIG4zPJrpB8HYZFsVANReMYO8=
X-Received: by 2002:a2e:88da:0:b0:24d:bc65:3388 with SMTP id
 a26-20020a2e88da000000b0024dbc653388mr5354820ljk.227.1650709855593; Sat, 23
 Apr 2022 03:30:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aa6:c048:0:b0:1bb:4c67:733c with HTTP; Sat, 23 Apr 2022
 03:30:54 -0700 (PDT)
From: Sara <kevin.llnc0ln78@gmail.com>
Date: Sat, 23 Apr 2022 11:30:54 +0100
Message-ID: <CACm70pqtW9=Ez-4NodpoiosSqDE+X4n4NsBsKcik-PgLRG7jFQ@mail.gmail.com>
Subject: Humanitarian Call
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
Reply-To: page1messageport@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Good Morning from Hungary.

Please bear with me over this unexpected message from me to you
because of the present devastating life situation that I found myself
unexpectedly in. My name is Sara a Ukraine Citizen writing to you from
Hungary where I am taken refuse after losing my Dad and Mum in a
Russian bomb blast in Kiev.

Please I seek your kind understanding and your assistance to help me
retrieve my late fathers funds deposited with a bank in France since I
am not yet of age to handle the matter with the bank and obtain the
funds for my better living and to complete my nursing education.
My life is now in shambles and I will be glad to detail you further
should you see me as your daughter and wish to come for my rescuer.

Waiting patiently for your response
Thanks
Sarah
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
