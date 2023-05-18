Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D28707B51
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 May 2023 09:46:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01E4460D89;
	Thu, 18 May 2023 07:46:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01E4460D89
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VsAEOY8PFjH2; Thu, 18 May 2023 07:46:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E3D1C60EF4;
	Thu, 18 May 2023 07:46:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E3D1C60EF4
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F3B51BF46D
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 May 2023 07:46:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0108160FEF
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 May 2023 07:46:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0108160FEF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 99BkT86I3_5K
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 May 2023 07:46:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79CA660D89
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 79CA660D89
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 May 2023 07:46:48 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id
 98e67ed59e1d1-24df4ecdb87so1240598a91.0
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 May 2023 00:46:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684396008; x=1686988008;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
 b=WYz9JB9s0IOTUgO+/LhHJELdBUwAjbd6nzwvMuCOdtMjUB0hDWSAJH9Ukm/3sawInl
 6KvKcgArJW6BPjjtTMpSUJCvGKE5qF994tDDZyiG9B1PIUcmG2XmHVptXC0e5sMnNuP6
 t/2bOV98SddL89mqlA5UGyOBN70vfAkU48uEkI7Elt7bIhYjZ9Ki7YPy/oSFdH4fTVda
 rE25vvYXIxlPgg5HmUbtIIKr90ChjSG5es8OX0MOm3ZJDv8+45gwENndvdQA6tEZDOAB
 RT7CuQoHGtm4DtdasJ0Ah6GG0TIcsxNPfyk9t3rN1HnNXXgtj6M5dguR5Z5ms8N8zHBi
 rIjg==
X-Gm-Message-State: AC+VfDz3p5Q183fgUzkXETGBk6qOkuyJdmb8CTC/EAKCPkU0BCalAPzH
 t0FrjxQe0GxNXJrWRbin0DlxDOvGrEsqX/6GnpA=
X-Google-Smtp-Source: ACHHUZ5p41WzgujjX17o/G0UlBf9PkQnkia8D7Dug6SELFnDUP1aihWvjz7TiIZjWDsnf/INjmbsN2/Ka6SQxhLFCek=
X-Received: by 2002:a17:90a:a906:b0:253:2f10:6133 with SMTP id
 i6-20020a17090aa90600b002532f106133mr1391791pjq.22.1684396007669; Thu, 18 May
 2023 00:46:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7022:6395:b0:63:dee7:2e09 with HTTP; Thu, 18 May 2023
 00:46:47 -0700 (PDT)
From: nina coulibaly <ninacoulibaly215@gmail.com>
Date: Thu, 18 May 2023 00:46:47 -0700
Message-ID: <CAOXQc5EBOZ4yjiJE4zgzpfEzQ6-Ru0Wkz+k8_trTOU4Vuf+zFw@mail.gmail.com>
Subject: from nina coulibaly
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684396008; x=1686988008;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
 b=XD2xDFhJ/jeljvRyIAjQS94DpdsSivf/07j2fYADI4Mhu7rhOVG6u5Niv9fjpw7ceb
 1zxU38RO5IR8LiCN1NjKUXjd+jniKSXBHC3XDYmDuwnCZrbuvbBMbuyzUeYY4JkGM4aH
 gaJZwiTBDGh2/m/81yMc3iNuvTjgjse1ndYL2QxOkeLUTi5PT6yH7t1UNUFryRHyICQK
 KxOywAkakU0nSC2TjKTDwV3yTOgS2H85VwQOF1rAkTIcmpluuuih0bJNOV7W3ubOsNzu
 XUXQLqo28ulR7fYVNX6fNP0Ep2xofbg2FROrkfDZo44naMzibWq8mlOEC5/l9TAjIX0c
 23ZA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=XD2xDFhJ
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

I am interested to invest with you in your country with total trust
and i hope you will give me total support, sincerity and commitment.
Please get back to me as soon as possible so that i can give you my
proposed details of funding and others.

Best Regards.

Mrs Nina Coulibaly
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
