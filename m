Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D05BD4F05A9
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Apr 2022 20:47:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B8AD4042B;
	Sat,  2 Apr 2022 18:47:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AOoBTTjVVR0i; Sat,  2 Apr 2022 18:47:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B679401A2;
	Sat,  2 Apr 2022 18:47:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1403A1BF2B5
 for <devel@linuxdriverproject.org>; Sat,  2 Apr 2022 18:47:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0330160B4E
 for <devel@linuxdriverproject.org>; Sat,  2 Apr 2022 18:47:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new); dkim=neutral
 reason="invalid (public key: not available)" header.d=alice.it
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Luyqrlf7P69b for <devel@linuxdriverproject.org>;
 Sat,  2 Apr 2022 18:47:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mta-out-04.alice.it (mta-out-04.alice.it [217.169.118.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 36A6C60B4B
 for <devel@driverdev.osuosl.org>; Sat,  2 Apr 2022 18:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alice.it; s=20211207;
 t=1648925238; bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 h=Reply-To:From:To:Date:Message-ID:MIME-Version;
 b=YUuFQsYmLnDoKgG+OOzab+5+oVeH4IFc1G971Q2zZ3x7oyGiqi5wGIiraQ7jDOe+2jcSY1TARAGbUPO5ncBdw9gQDSo2jf+EqpTSawxIgilGbM0nCxXUqB4UBh6I95TCH8wMYBB7VgFK+iRp8hl8N40kPMTe9SzxYzXY8CUN+z2BlLmiYXVIsUVYMV2mNe68jhahFIT01r4La+6w+F9fEORIVCVVzb3akgRLwfiXMaKRNAA8wtnYEUH7c1XZdvHG7QSCo0ZrNzhVw6YUOTiYfrdjfTvsBq7rCDm/zNSz8bdsgEGrD+cmnBvHqdsUD6LecxFPV0lFF9msI5MMmUzYlA==
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvvddrudeikedgudefudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfvgffngfevqffokffvtefnkfetpdfqfgfvnecuuegrihhlohhuthemuceftddunecugfhmphhthicushhusghjvggtthculddutddmnefgmhhpthihucgsohguhiculdehtddmnecujfgurheprhfhvfffkfggsedttdeftddttddtnecuhfhrohhmpeghvgcuhhgrvhgvucgrnhcuohhffhgvrhcuthhouchinhhvvghsthcuihhnucihohhurhcutghouhhnthhrhicuuhhnuggvrhcurgcujhhoihhnthcuvhgvnhhtuhhrvgcuphgrrhhtnhgvrhhshhhiphcuphhlvggrshgvuchrvghplhihuchfohhruchmohhrvgcuuggvthgrihhlshcuoegsihhrohhlohesrghlihgtvgdrihhtqeenucggtffrrghtthgvrhhnpeetffeulefhheffieeltefgvedtffejhedtheefhfevueeitdeiffeuhfehudffudenucfkphepudelkedrkedrkeehrddvhedtnecuvehluhhsthgvrhfuihiivgepfeejudenucfrrghrrghmpehhvghloheprghlihgtvgdrihhtpdhinhgvthepudelkedrkedrkeehrddvhedtpdhmrghilhhfrhhomhepsghirhholhhosegrlhhitggvrdhithdpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvvghlsegurhhivhgvrhguvghvrdhoshhuohhslhdrohhrgh
X-RazorGate-Vade-Verdict: clean 60
X-RazorGate-Vade-Classification: clean
Received: from alice.it (198.8.85.250) by mta-out-04.alice.it (5.8.807.04)
 (authenticated as birolo@alice.it)
 id 623DC2DC00DBE8D7 for devel@driverdev.osuosl.org;
 Sat, 2 Apr 2022 20:47:16 +0200
From: We have an offer to invest in your country under a joint venture
 partnership please reply for more details <birolo@alice.it>
To: devel@driverdev.osuosl.org
Date: 02 Apr 2022 11:47:13 -0700
Message-ID: <20220402114713.D2648A64D1B2FA17@alice.it>
MIME-Version: 1.0
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
Reply-To: dougfied20@inbox.lv
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
