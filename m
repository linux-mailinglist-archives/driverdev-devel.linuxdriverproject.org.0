Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AEA767C1C
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jul 2023 06:31:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E1B68410F;
	Sat, 29 Jul 2023 04:31:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E1B68410F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id umaV-piaVRcJ; Sat, 29 Jul 2023 04:31:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1410B84114;
	Sat, 29 Jul 2023 04:31:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1410B84114
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A29581BF2AF
 for <devel@linuxdriverproject.org>; Sat, 29 Jul 2023 04:31:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7BA3840186
 for <devel@linuxdriverproject.org>; Sat, 29 Jul 2023 04:31:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BA3840186
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id csqdjILCjw01 for <devel@linuxdriverproject.org>;
 Sat, 29 Jul 2023 04:31:01 +0000 (UTC)
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com
 [IPv6:2607:f8b0:4864:20::1133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4BF8240119
 for <devel@linuxdriverproject.org>; Sat, 29 Jul 2023 04:31:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4BF8240119
Received: by mail-yw1-x1133.google.com with SMTP id
 00721157ae682-583ad8ab0faso2678477b3.0
 for <devel@linuxdriverproject.org>; Fri, 28 Jul 2023 21:31:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690605060; x=1691209860;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RE5l1VpxCufAhFhvUtJmOdSBkyXi7tvoVHorDEIVEKk=;
 b=i3PaBYNdxkOVaiIbVoF8Djdp7bjYuAUoJ3IVwlhJHY9oYWXflU0OcZLNBBXauGKWt6
 gcTyNDb71po2tlhmilUCOL6JpIuLh/fz/0JjO+GIVOW9wijjM2jjIOoZMk5Ie222If5F
 rQ+4qd6QrV4cUlDLgGHmkn6qiEcmWqlQzuqxw4T1196rFtQ7IJA5Zj+t1TweDf1YBxr1
 e2RJUwhUj7rZX0bYAh0IPm1VsdC61Jz1XbwL4MZywn9E06mO7pSOZWZJxIivGMO1G/Z7
 aM/SPhrFafuYdcTk/XBLhdGt7JDTtxPJZrn0ZRfiGKRExP1iXIHqfnVge8bAK4hPF/vl
 v/Rw==
X-Gm-Message-State: ABy/qLZcFbo5Gsb8vYHnHQKXd3LvEkk0KImty+4zR/RygDLmQ16yKjM3
 wYGGeRDpPNALR/oLFKwM7CtbMhzyWAUYiLaOC0E=
X-Google-Smtp-Source: APBJJlFdZKfziF3CIJ9oAZkLeL6OiyForpbBK41JsZRKBhGzAZdyvCmRUqYdl9l8SOG3GhuusHlNOoJOUzj1bk5ZozY=
X-Received: by 2002:a81:6dd8:0:b0:567:7dc3:2618 with SMTP id
 i207-20020a816dd8000000b005677dc32618mr507301ywc.1.1690605060080; Fri, 28 Jul
 2023 21:31:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7108:6326:b0:31a:14a8:aa9e with HTTP; Fri, 28 Jul 2023
 21:30:59 -0700 (PDT)
From: Bintu Felicia <yerobarry10@gmail.com>
Date: Sat, 29 Jul 2023 05:30:59 +0100
Message-ID: <CAD1=OdU8CNRTkW-trhk78giS0M7Csu=qw30JfYK9hAYsXvXKuw@mail.gmail.com>
Subject: HELLO
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690605060; x=1691209860;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=RE5l1VpxCufAhFhvUtJmOdSBkyXi7tvoVHorDEIVEKk=;
 b=ZJfSP9Ai5zq8/2gGe3AWaxRYSIWcMGMa0VSeMPe2GQbcZjA5+fcsmnDuKEGuu6x197
 D/K6G2utnm5RNrm0jrpJpmqoZWyq5kZgEP4s+sZCZyBe9f4niOAXuZhBxGjGxCEgSOGQ
 6CphsLLz29Lk6iUJbgXTBFsbLp8VQ3phkyn2rrSbQ4OwyMDmIN6qMyDIbScjIWd7bNoG
 oGFeOryUSsfVKuFlfpMTkXSOtUTL02bgoPzM8BTHQDPOnX8DwD3D/AjtyJ2i08vi4pV+
 72PkineKcOkvH3nK+7Gw6zJECTt6VrbUt/BrJVP4TmEDkFOvRxP7XvqA0WKIyFENdJu/
 /euQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=ZJfSP9Ai
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
Reply-To: bintu37999@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

How are you today? I hope you are fine. My name is Miss
Bintu Felicia . l am single looking for honest and nice
person whom i can partner with . I don't care about
your color, ethnicity, Status or Sex. Upon your reply to
this mail I will tell you more about myself and send you
more of my picture .I am sending you this beautiful mail,
with a wish for much happiness.

Warm regards,

Felicia Bintu
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
