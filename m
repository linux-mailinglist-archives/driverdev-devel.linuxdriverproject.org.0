Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 531AA5B06D5
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Sep 2022 16:32:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A5374058B;
	Wed,  7 Sep 2022 14:32:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A5374058B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yzzMEB2-GJz9; Wed,  7 Sep 2022 14:32:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB0C84057F;
	Wed,  7 Sep 2022 14:32:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB0C84057F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 211511BF28D
 for <devel@linuxdriverproject.org>; Wed,  7 Sep 2022 14:32:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E953682849
 for <devel@linuxdriverproject.org>; Wed,  7 Sep 2022 14:32:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E953682849
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qhHRgXUx-lDO for <devel@linuxdriverproject.org>;
 Wed,  7 Sep 2022 14:32:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58359827BB
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 58359827BB
 for <devel@linuxdriverproject.org>; Wed,  7 Sep 2022 14:32:27 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id u6so19944819eda.12
 for <devel@linuxdriverproject.org>; Wed, 07 Sep 2022 07:32:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date;
 bh=UTPjlhWN0j/3cl0uibj9IdU3K9tIHCNTd74bAPWV+BQ=;
 b=kFZ51F4dYT4yDdvpVVLyPwah5B2oNG9V/XoY965lQAMMXsVFxxI7pK2l1oGW4WhpgQ
 34VE9f4hqVzZScSUE4kOzpRikPWmdoqVt6cyf27qTs41Tdsa4vZp89vwhCs0wW8xYB/g
 jjEmOyWKzCMBqnujDK3rKMwkN79YFc8DQu8uP9QFapIFKX/Xtvslwk1PtbCCJjxBA75z
 IyIE4a4WRBleJ+drPMVJibDecfWRU4ynSxkasOxXSZ5v7qNFsK8E7xEfUriwcOyr1kbr
 T7fbUQjVhtQ4Xp3gpC4s+XTWGBUfmpRhupDaaS2yT9cy9j7gFYVK9zCalW3wAJeB/Vui
 ZSbw==
X-Gm-Message-State: ACgBeo2ajm28jsjDZEfpFHMV+FE7FXpgcA/U90AyA7I/iEsbZSDD8OWv
 /QFGJ/PA0sx1GyNhA7Wn7ALePjrUHNgrVlMpVec=
X-Google-Smtp-Source: AA6agR4u/dbCsJbsVZIBLL6h1UPerJ2TE45jgxUgoCjVrPyl8+wsl025ctgdSe/t/2vkl2wcEplmUnwM80u8Z9eZepA=
X-Received: by 2002:a05:6402:51d1:b0:44b:ea34:6c0a with SMTP id
 r17-20020a05640251d100b0044bea346c0amr3314952edd.369.1662561145430; Wed, 07
 Sep 2022 07:32:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:3fc4:0:0:0:0:0 with HTTP;
 Wed, 7 Sep 2022 07:32:24 -0700 (PDT)
From: LUMAR CASEY <miriankushrat@gmail.com>
Date: Wed, 7 Sep 2022 16:32:24 +0200
Message-ID: <CAO4StN1OR4tXWWJAZ10p+-rJJ7qOsU8FxVS9cWv=PiegDVtnsA@mail.gmail.com>
Subject: ATTENTION/PROPOSAL
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date;
 bh=UTPjlhWN0j/3cl0uibj9IdU3K9tIHCNTd74bAPWV+BQ=;
 b=UtFlTSGHQz81OSpK49QGakNczTrN7BvVDcdecb2PlQLSH6U6g6YnfIOwEhF4HyopVw
 xF3rEa1JazWxVmoA4IZ4APHTWslJfRg5yYhTgDCuueeGynL8ZQ8rlmQ1XFto97Lt71ZJ
 j3Ra7mPDPEuM/14t68TI6JbC26x0Okvn0tFLgQTeFpImczwoq6TYczyXFG/k8mY/UwUL
 n4rphtthc3JujA/DBbZnDH2NqlI3e1mX42kS7zoBsDbrZwgnwP4UWzhHEqiLlccbumw3
 Wu+X+CCk1Fp6KNp6XYfEMT802FX63wwwnC1iqf8dYPeJE0BVyNRj/Y77DpMb+lFAEfsS
 NjnA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=UtFlTSGH
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
Reply-To: lumar.casey@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

ATTENTION

BUSINESS PARTNER,

I AM LUMAR CASEY WORKING WITH AN INSURANCE FINANCIAL INSTITUTE, WITH
MY POSITION AND PRIVILEGES I WAS ABLE TO SOURCE OUT AN OVER DUE
PAYMENT OF 12.8 MILLION POUNDS THAT IS NOW SECURED WITH A SHIPPING
DIPLOMATIC OUTLET.

I AM SEEKING YOUR PARTNERSHIP TO RECEIVE THIS CONSIGNMENT AS AS MY
PARTNER TO INVEST THIS FUND INTO A PROSPEROUS INVESTMENT VENTURE IN
YOUR COUNTRY.

I AWAIT YOUR REPLY TO ENABLE US PROCEED WITH THIS BUSINESS PARTNERSHIP TOGETHER.

REGARDS,

LUMAR CASEY
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
