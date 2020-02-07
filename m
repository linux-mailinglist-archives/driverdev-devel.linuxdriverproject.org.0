Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3580D155F56
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Feb 2020 21:18:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 481ED2226E;
	Fri,  7 Feb 2020 20:18:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jHHZYI6Ez+Jf; Fri,  7 Feb 2020 20:18:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2A52B2226B;
	Fri,  7 Feb 2020 20:18:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7C3781BF30C
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 20:18:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7804D8701C
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 20:18:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k1i66KJ+tNLu for <devel@linuxdriverproject.org>;
 Fri,  7 Feb 2020 20:18:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5540986E1F
 for <devel@driverdev.osuosl.org>; Fri,  7 Feb 2020 20:18:42 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id k29so318212pfp.13
 for <devel@driverdev.osuosl.org>; Fri, 07 Feb 2020 12:18:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=8cDRXBFOpE9J1p6S5H+HXSQg9q3m7pUJ3iUuQ5MPcDc=;
 b=ivuPf8a+VQ7ts4QWZEasa2IZ9M6uEU3dgsXgUf73LTH8asREriEDnowsBZ2pC+bgSm
 lzOBlRRIwt5v2QzqbRWnupl/eDOwLTj9noKeZMj+xwNqQddEauf1Xib25hWdR3r+5yi5
 oPseJqGpz1IRjduQZnFdytdSC8NKL1H0bhJGs9GD0Yn6r3oLKXXekgE6AQO3kF6E8oAs
 DG3k6NEnKTpegA8Ql2ou/D6mQtnqAlYrQNWIpu8Bxdn3kI0iqZ1uw0VugvX3SvdUJwUH
 LmQlIYUor7oK3p5WlEYER2JRLHyNaxAHCcdzpks00SMjQRiaTMp5xcZ/JYcyBJV773xT
 gTWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=8cDRXBFOpE9J1p6S5H+HXSQg9q3m7pUJ3iUuQ5MPcDc=;
 b=PT6ZHQjO09197xJM+ak64eP3EjnuyGDwODhFgKpHCKXDyUECeCrysjIA6XU0XGTIyU
 YVE4HHKldMsC4boLtDzJ2E93U7wH3WKRuLhsSAvype0AS1y85ZYGMW/GhZmo79yuroWz
 qzuVlmlNrQXDITj4odEkjmzckFLcanmvZ/wICi+/lV/KlvWhaEcRcuFuB891jkGCv1oX
 b5qgS7JuvMcoH7jzDxzKOPiaJAy/Ur3LstlD8o5JHJJVUDwf/dTDrqGvCe4VKfJ/rKtR
 nUBus4tY164f9Gd1fqgVBmn9TgAjU1wHdJzXXFeXng/GJtQAJ1vBvutdMUnrT1i5HBb+
 scrw==
X-Gm-Message-State: APjAAAU7gysEMqxIAimILRYEI2lFRmNSCUx/xzJqkdNXTC/pw4ryc9sg
 YeyBQ8uGmkGsNW66XDIXxMc8OL1qkn8l1AepdY0=
X-Google-Smtp-Source: APXvYqwFJpkrQkBKjTNCtluLGSByUbZzPfcDQqm5f5tsKNwwkZaq4svlOZT253bf+X+7a0wiDwJ+vHizu8Lhvdl1LoI=
X-Received: by 2002:a63:7e58:: with SMTP id o24mr939627pgn.214.1581106721873; 
 Fri, 07 Feb 2020 12:18:41 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:90a:3846:0:0:0:0 with HTTP; Fri, 7 Feb 2020 12:18:41
 -0800 (PST)
From: "Mr. Theophilus Odadudu" <bukahenry10@gmail.com>
Date: Fri, 7 Feb 2020 15:18:41 -0500
Message-ID: <CAEzczGJ9f9MvNKr7unVQJLzqv6Ki9oVjiaZ7_7Sj9OEdbq4OjQ@mail.gmail.com>
Subject: LETTER OF INQUIRY
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
Reply-To: auch197722@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good Day,

I work as a clerk in a Bank here in Nigeria, I have a very
confidential Business Proposition for you. There is a said amount of
money floating in the bank unclaimed, belonging to the bank Foreign
customer who die with his family in the Ethiopian Airline crash of
March 11, 2019.

I seek your good collaboration to move the fund for our benefit. we
have agreed that 40% be yours once you help claim.

Do get back to with 1) Your Full Name: (2) Residential Address: (3)
Phone, Mobile  (4) Scan Copy of Your ID. to apply for claims of the
funds.

Regards
Theophilus Odadudu
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
