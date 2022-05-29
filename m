Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D995372A8
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 May 2022 23:00:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 312C8400FF;
	Sun, 29 May 2022 21:00:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id avRHzpzoLc48; Sun, 29 May 2022 21:00:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E7771408DB;
	Sun, 29 May 2022 21:00:16 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E4451BF3D7
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 29 May 2022 21:00:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F11D041936
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 29 May 2022 21:00:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yEqbqUctU87a
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 29 May 2022 21:00:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vk1-xa34.google.com (mail-vk1-xa34.google.com
 [IPv6:2607:f8b0:4864:20::a34])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3F3CC41941
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 29 May 2022 21:00:13 +0000 (UTC)
Received: by mail-vk1-xa34.google.com with SMTP id bs5so4172902vkb.4
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 29 May 2022 14:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=/rL+TycpMQLfB5P4Zn9xgGfUWg8yPCNTwrE46ZNldMM=;
 b=V8yopQlz7Z1biQLKzqHaFO3XJaGTebcXTU6SBtxzloO6Qx6yAmEBrpbuggRMsbGkIW
 hvg1tQEkuABCXyA+LoNdbt8z7z+C2S1vWPD+sBh64hOREjj3joqfsd4A/ACtKw0HECad
 iMApGLqAH5r0b05wMnjptnUmttrn6jeWzJHQqG4cr0x+n823qKoqE080OIaGjAYLFCzG
 zsegjaK4V/J5OvtBjhAvZFgp9xzgDcAQrSd/H/kmItIb+HIQEFpN9JRZBmHN0sknYUrX
 3Qit+4u79IHDbOtF43oFEHYHI11aXlmiR7bbDjWhBUAjo/ttbAEodRJbbGNzg9rVvCIk
 Mplg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=/rL+TycpMQLfB5P4Zn9xgGfUWg8yPCNTwrE46ZNldMM=;
 b=E8qf+8/a8KbZ1BvIHcpCG2vGd51FITMKj5T0d5bi7PTQYIPRNLzp6BP5KRsSOBE5W2
 d4qzh/yOH0JakAqUUohKy+bWUY/EyrqXnTYVgR12FN9oq6MDTnzSfhnYKBuNteTHjjTf
 Is393hk9EmvvBzBOakThRuemUskKIKB0J9QZZ2lJmIWyn0zwgkj4d318vaLuyJxHE3ml
 XXBpYt+c9qmE7EiVK2hJ2k+UtKwRDqjTFp9hcOjmnBW+2FAOI1S59+Puyf8iSHuSxKe3
 JF1FgqWPjgomTWzE0vy3WF/h4HIlwA4sI2Hy/B41RF9DH7lSZQgH/FK8t+Fgi9TIhZNk
 sHyg==
X-Gm-Message-State: AOAM533Lc+qlbuRIyeoF4EVfgN2K1ScHi0r/AILamxx8U8ycleO1cmn2
 fboWylVLAldFHhkkq6H76pRq0YnV2o9pOZ/W2nY=
X-Google-Smtp-Source: ABdhPJwqN8QUEt6HgzWl1vz4GaEjMd59POqI8h0rVkVtxQzLZF9jqenh1riVGqavtp1Ng/E03w9avBywF82rew1FJ38=
X-Received: by 2002:ac5:cac7:0:b0:356:f310:9a27 with SMTP id
 m7-20020ac5cac7000000b00356f3109a27mr18794402vkl.10.1653858011762; Sun, 29
 May 2022 14:00:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:67c6:0:0:0:0:0 with HTTP; Sun, 29 May 2022 14:00:11
 -0700 (PDT)
From: Dr Ava Smith <kundah7@gmail.com>
Date: Sun, 29 May 2022 14:00:11 -0700
Message-ID: <CAFuRN-RrTcuJ6d1w6E49SuLpjry6TCi5RMz8W=qcgMRDzA1aiQ@mail.gmail.com>
Subject: GREETINGS FROM DR AVA SMITH
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
Reply-To: dravasmith27@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello Dear,
how are you today?hope you are fine
My name is Dr Ava Smith ,Am an English and French nationalities.
I will give you pictures and more details about me as soon as i hear from you
Thanks
Ava
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
