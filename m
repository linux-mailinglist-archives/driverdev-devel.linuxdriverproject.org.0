Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5149546CE1
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jun 2022 21:02:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 380264253D;
	Fri, 10 Jun 2022 19:02:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g7kYZR_0-t8A; Fri, 10 Jun 2022 19:02:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9D7141A63;
	Fri, 10 Jun 2022 19:02:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0949D1BF5B5
 for <devel@linuxdriverproject.org>; Fri, 10 Jun 2022 19:02:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EC70E8447D
 for <devel@linuxdriverproject.org>; Fri, 10 Jun 2022 19:02:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gLfj40T3x25M for <devel@linuxdriverproject.org>;
 Fri, 10 Jun 2022 19:02:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D1EF8447B
 for <devel@driverdev.osuosl.org>; Fri, 10 Jun 2022 19:02:26 +0000 (UTC)
Received: by mail-lj1-x235.google.com with SMTP id y15so166276ljc.0
 for <devel@driverdev.osuosl.org>; Fri, 10 Jun 2022 12:02:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=51RIadb6uMG8qQNL2W77cS297AVcIqUghNiTlwSKJng=;
 b=FiPYsscMlQl+BeMLe2HxazVfp2jVvqGd7sTS2ISdCOctWEMMKoeYeCgdDRoS3Cibi7
 AO8CMHWd16nSR2uWtZXYX/er438h/fjpyyfRx25adtondU83DkIzcJUWrzYh8AQGnqNO
 op8BwHS8lqWoR2AnNpZ4mOEKQu2wMHQiDIdvDYw1yumTfG35s/zI9UHY05Z1+lXDLO9H
 zaG5azzGBjKhp8YvssncuaaqP+219M5ceKymhaprFG1qozT9CRFwXjWHimPEBC7owqkd
 EmkMvkbaMK3NxI4N3uQ3bxUeQActwy2C0lU5/LNyq8PJeGSzOzXstyM5ZTeWW9TwPi/i
 V+Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=51RIadb6uMG8qQNL2W77cS297AVcIqUghNiTlwSKJng=;
 b=s6RfrN6NwtqcHHlZP3e19gqiF9J+BPTzxdLO6Y/EBa+Wieu9piCoM/6D70vLnbQCRd
 lvMRgnMQNybFQynA/xIpzkUvaNFjVl7QuJMnN7m2GLqRfQQLJOnmf5vlPHEhNPT5F5FO
 jE8ocvfW8finhnnbgclYR95/xTv8eBjUJ1C6Bt1ADzdrqYwbULBYzOzVE5ksQ+UOH4RN
 nDKIKFr736uhCCWSwq96r7nIgMIqbQCZlsZiEus7IfUnpnopPh0WGbP12q/19zBfA6Zo
 HIRqS+leFZIFRTAnjqsdvGA4YhFD9vkwWdDcxrDRGHG72QpBMwja0nvvJsqLkMeMxfwp
 j55g==
X-Gm-Message-State: AOAM5323/0pKdp5PDySrdGYNfrUzd+MqY403mUCu6EaO2qyH49emy3EK
 FOtGUo+x89zg43kZVnrkUTNuMzplkdRTSK0tPWI=
X-Google-Smtp-Source: ABdhPJyBr1vZIZ7rozTSJdgpcgqVGna5k9FJe4ct8Ajh3+8OHzK7APbZduIwADFfEmX8YjKjj9GVeMQbLwcq/OmN0Ww=
X-Received: by 2002:a2e:8501:0:b0:249:17a0:ebf8 with SMTP id
 j1-20020a2e8501000000b0024917a0ebf8mr63484834lji.125.1654887744099; Fri, 10
 Jun 2022 12:02:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6504:3b2:b0:1cf:75f8:15f7 with HTTP; Fri, 10 Jun 2022
 12:02:23 -0700 (PDT)
From: Nelson Bile <lynchjennifer099@gmail.com>
Date: Fri, 10 Jun 2022 21:02:23 +0200
Message-ID: <CALFOzozOFsTR=TzV-uUPemEBDPsqu4ppvOuw3Dopqc5REDP1fg@mail.gmail.com>
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
Reply-To: nelsonbile450@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hallo, ich habe dir vor ein paar Tagen eine E-Mail geschickt. Hast du
meine Nachricht erhalten? bitte um dringende antwort
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
