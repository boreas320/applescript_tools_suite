#!/usr/bin/osascript
--�˽ű���Ϊ�˴���ÿ���л�hostsʱChrome�ܲ��ܼ�ʱˢ����ȷ��hosts������
tell application "Google Chrome"
	tell front window
		
		--��¼��ʼtab��������λ��
		set origTab to active tab
		set origTabIndex to active tab index
		
		--��Chromeˢ��sockets��ҳ��
		set theTab to make new tab with properties {URL:"chrome://net-internals/#sockets"}
		
		--�ȴ�ҳ���������,�˴�Ӧ��ֻ��html�ĵ��������
		set isLoadDone to not loading of theTab
		repeat until isLoadDone
			set isLoadDone to not loading of theTab
		end repeat
		
		--��ҪΪҳ���еĳ�ʼ��javascript����һ��ʱ��,��ʱ����Ը��ݻ��������ʼ��javascript��ʱ������ʵ��ĵ���
		delay 1
		
		--ִ��ˢ��sockets���ӵĲ���
		execute theTab javascript "g_browser.sendFlushSocketPools();g_browser.checkForUpdatedInfo(false);"
		
		--�ر�Chromeˢ��sockets��ҳ��
		close theTab
		
		--����ԭ���Ĺ���tabҳ
		set active tab index to origTabIndex
		
		--�������빤��tabҳ
		reload origTab
		
	end tell
end tell


